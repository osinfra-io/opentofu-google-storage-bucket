# Required Providers
# https://opentofu.org/docs/language/providers/requirements

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# Google Storage Bucket
# https://github.com/osinfra-io/pt-arche-google-storage-bucket

module "google_storage_bucket" {
  source = "../../../"

  labels = {
    "mock-key" = "mock-value"
  }

  location = "US"
  name     = random_id.bucket_name.hex
  project  = var.project
}

# Random ID
# https://search.opentofu.org/provider/hashicorp/random/latest/docs/resources/id

resource "random_id" "bucket_name" {
  byte_length = 5
}
