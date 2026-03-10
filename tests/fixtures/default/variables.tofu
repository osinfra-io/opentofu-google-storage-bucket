# Input Variables
# https://opentofu.org/docs/language/values/variables

variable "environment" {
  description = "The deployment environment"
  type        = string
}

variable "project" {
  description = "The GCP project ID"
  type        = string
}
