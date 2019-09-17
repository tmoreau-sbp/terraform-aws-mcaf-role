variable "name" {
  type        = string
  description = "The name of the role"
}

variable "assume_policy" {
  type        = string
  default     = null
  description = "The assume policy to attach to the role"
}

variable "principal_type" {
  type        = string
  default     = ""
  description = "The type of assume role principal"
}

variable "principal_identifiers" {
  type        = list(string)
  default     = []
  description = "List of identifiers for principals"
}

variable "role_policy" {
  type        = string
  default     = ""
  description = "The IAM policy to attach to the role"
}

variable "policy_arns" {
  type        = set(string)
  default     = []
  description = "A set of policy ARNs to attach to the user"
}

variable "postfix" {
  type        = bool
  default     = true
  description = "Postfix the role and policy names with Role and Policy"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the role"
}
