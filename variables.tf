variable "name" {
  type        = string
  description = "The name of the role"
}

variable "principal_type" {
  type        = string
  default     = ""
  description = "The type of principal"
}

variable "principal_identifiers" {
  type        = list(string)
  default     = []
  description = "List of identifiers for principals"
}

variable "policy" {
  type        = string
  description = "The policy to attach to the role"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the role"
}
