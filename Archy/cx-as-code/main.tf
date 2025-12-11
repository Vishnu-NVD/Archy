terraform { 
  cloud { 
    
    organization = "Cx_As_Code" 

    workspaces { 
      name = "CI_CD" 
    } 
  } 
}

  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}
