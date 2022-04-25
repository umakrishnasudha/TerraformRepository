provider "azurerm" {
  features {}
  version         = "=2.46.0"
  subscription_id = "f2d82997-9d2e-4d6d-93b8-7db573fd5e46"
  client_id       = "5f80b97e-9b0a-4b61-a42c-f0be1d220f54"
  client_secret   = "f6P7Q~7cO.zfZc67Jt11-qbvMBB2G-QIww-Os"
  tenant_id       = "ddfcd57f-aec0-458e-ad1c-89ffefda0dbd"
}


terraform {
  backend "azurerm" {
    storage_account_name = "sa100sa"
    container_name       = "container1"
    key                  = "prod.terraform.tfstate"
    access_key           = "i1SaAewAeqhrdnb7fgbGIUBb/EC5sRsNGu2KnMxzUcZeG3dZf3y+osfiG2lK9hjUBupQ8jQzqt0o+AStLh79Ug=="
  }
}


