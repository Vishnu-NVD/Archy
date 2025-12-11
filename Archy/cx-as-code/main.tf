terraform {

  backend "remote" {
    organization = "Cx_As_Code"

    workspaces {
      prefix = "CI_CD"
    }
  }

  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}
