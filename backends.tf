#   --- root/backends.tf
terraform {
  cloud {
    organization = "hacwa"

    workspaces {
      name = "MTC-dev"
    }
  }
}