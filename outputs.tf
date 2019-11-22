output "id" {
  value       = aws_iam_role.default.id
  description = "ID of the role"
}

output "arn" {
  value       = aws_iam_role.default.arn
  description = "ARN of the role"
}

output "unique_id" {
  value       = aws_iam_role.default.unique_id
  description = "Unique ID of the role"
}
