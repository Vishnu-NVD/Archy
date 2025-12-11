terraform {
  required_providers {
    genesyscloud = {
      source  = "MyPureCloud/genesyscloud"
      version = "~> 1.70.0"
    }
  }
 }

 resource "genesyscloud_flow" "classifier_flow" {
  filepath          = "./deploy-flow/archyflow.yaml"
  file_content_hash = filesha256("./deploy-flow/archyflow.yaml")
}
