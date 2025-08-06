output "aws_iam_openid_connect_provider_arn" {
  description = "The ARN of the OpenID Connect provider for EKS"
  value       = aws_iam_openid_connect_provider.eks.arn
  
}