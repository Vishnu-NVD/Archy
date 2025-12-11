terraform {
  required_providers {
    genesyscloud = {
      source  = "MyPureCloud/genesyscloud"
      version = "~> 1.70.0"
    }
  }
 }

 resource "genesyscloud_flow" "classifier_flow" {
  filepath          = "./modules/deploy_flows/archyflow.yaml"
  file_content_hash = filesha256("./modules/deploy_flows/archyflow.yaml")
}
