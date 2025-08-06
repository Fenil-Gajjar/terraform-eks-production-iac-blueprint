module "vpc" {
  source = "./01-VPC"

  env         = local.env
  region      = local.region
  zone1       = local.zone1
  zone2       = local.zone2
  eks_name    = local.eks_name
  eks_version = local.eks_version
}


module "eks" {
  source = "./02-EKS"

  env         = local.env
  region      = local.region
  eks_name    = local.eks_name
  eks_version = local.eks_version
  private_zone1_id = module.vpc.private_zone1_id
  private_zone2_id = module.vpc.private_zone2_id
}

module "iam" {
  source = "./03-Add_IAM_User_Role_to_EKS"

  env         = local.env
  eks_name    = local.eks_name
  eks_cluster_name = module.eks.eks_cluster_name
}


module "hpa" {
  source = "./04-HPA_on_EKS"

  cluster_name      = module.eks.cluster_name
  cluster_endpoint  = module.eks.cluster_endpoint
  cluster_ca_data   = module.eks.cluster_ca_data
  eks_node_group_general = module.eks.node_group_general

}

module "cluster_autoscaler" {
  source = "./05-Cluster_Autoscaler_and_EKS_Pod_Identities"

  cluster_name      = module.eks.cluster_name
  metrics_server = module.hpa.metrics_server

    # ensure autoscaler waits until metrics-server is done
  depends_on = [module.hpa]

}

module "aws_loadbalancer_controller" {
  source = "./06-AWS_Load_Balancer_Controller"

  cluster_name      = module.eks.cluster_name
  vpc_id           = module.vpc.vpc_id
  cluster_autoscaler = module.cluster_autoscaler.cluster_autoscaler

  depends_on = [module.cluster_autoscaler]
}

module "nginx_ingress" {
  source = "./07-Nginx_Ingress_Controller_in_EKS"

  depends_on = [ module.aws_loadbalancer_controller]
}

module "ebs_csi_driver" {
  source = "./08-EBS_CSI_Driver_ReadWriteOnce_in_EKS"

  cluster_name      = module.eks.cluster_name

  depends_on = [module.eks.node_group_general]
}

module "efs_csi_driver" {
  source = "./09-EFS_CSI_Driver_in_EKS"

  cluster_name      = module.eks.cluster_name
  eks_oidc_issuer_url = module.eks.oidc_issuer_url
  cluster_security_group_id = module.eks.cluster_security_group_id

  private_subnet_zone1_id = module.vpc.private_subnet_zone1_id
  private_subnet_zone2_id = module.vpc.private_subnet_zone2_id
}

module "secrets_manager" {
  source = "./10-Secrets_manager_in_EKS"

  cluster_name      = module.eks.cluster_name
  eks_oidc_issuer_url = module.eks.oidc_issuer_url
  aws_iam_openid_connect_provider_arn = module.efs_csi_driver.aws_iam_openid_connect_provider_arn

  depends_on = [module.efs_csi_driver]
}