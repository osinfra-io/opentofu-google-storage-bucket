# Local Values
# https://opentofu.org/docs/language/values/locals

locals {
  storage_bucket_kms_key_names = var.default_kms_key_name == null ? [] : [var.default_kms_key_name]
}
