variable "name" {
  type        = string
  description = "The name of the role"
}

variable "principal_type" {
  type        = string
  description = "The type of principal"
}

variable "principal_identifier" {
  type        = list(string)
  description = "List of identifiers for principals"
}

variable "policies" {
  type        = list(string)
  description = "List of policies to attach to the role"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the role"
}
