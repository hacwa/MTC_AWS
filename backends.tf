terraform {
  cloud {
    organization = "hacwa"

    workspaces {
      name = "MTC-dev"
    }
  }
}