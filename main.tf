locals {
  assume_policy = var.assume_policy != "" ? var.assume_policy : data.aws_iam_policy_document.default.json
}

data "aws_iam_policy_document" "default" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      type        = var.principal_type
      identifiers = var.principal_identifiers
    }
  }
}

resource "aws_iam_role" "default" {
  name               = var.name
  assume_role_policy = local.assume_policy
  tags               = var.tags
}

resource "aws_iam_role_policy" "default" {
  name   = var.name
  role   = aws_iam_role.default.id
  policy = var.role_policy
}
