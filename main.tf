locals {
  assume_policy = var.assume_policy != null ? var.assume_policy : data.aws_iam_policy_document.default.json
}

provider "aws" {}

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
  name               = "${var.name}Role"
  assume_role_policy = local.assume_policy
  tags               = var.tags
}

resource "aws_iam_role_policy" "default" {
  count  = var.role_policy != null ? 1 : 0
  name   = "${var.name}Policy"
  role   = aws_iam_role.default.id
  policy = var.role_policy
}

resource "aws_iam_role_policy_attachment" "default" {
  for_each = var.policy_arns

  role       = aws_iam_role.default.name
  policy_arn = each.value
}
