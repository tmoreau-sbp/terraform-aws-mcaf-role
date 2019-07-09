data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    principals = {
      type       = var.principal_type
      identifier = var.principal_identifier
    }
  }
}

resource "aws_iam_role" "default" {
  name               = var.name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  tags               = var.tags
}

resource "aws_iam_role_policy" "test_policy" {
  count  = length(var.polcies)
  name   = "${var.name}-policy-${count.index}"
  role   = aws_iam_role.default.id
  policy = var.policy[count.index]
}
