variable name {
  type        = string
  description = "The name of the role"
}

variable assume_policy {
  type        = string
  default     = ""
  description = "The assume policy to attach to the role"
}

variable principal_type {
  type        = string
  default     = ""
  description = "The type of assume role principal"
}

variable principal_identifiers {
  type        = list(string)
  default     = []
  description = "List of identifiers for principals"
}

variable role_policy {
  type        = string
  description = "The IAM policy to attach to the role"
}

variable tags {
  type        = map(string)
  description = "A mapping of tags to assign to the role"
}
