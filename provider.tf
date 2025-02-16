terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "6.26.0"
    }
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
    archive = {
      source = "hashicorp/archive"
      version = "2.2.0"
    }
    local = {
      source = "hashicorp/local"
      version = "2.2.3"
    }
  }
}

provider "oci" {
  region = var.region
}