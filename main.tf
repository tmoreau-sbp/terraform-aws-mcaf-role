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
  assume_role_policy = data.aws_iam_policy_document.default.json
  tags               = var.tags
}

resource "aws_iam_role_policy" "test_policy" {
  count  = length(var.policies)
  name   = "${var.name}-policy-${count.index}"
  role   = aws_iam_role.default.id
  policy = var.policies[count.index]
}
