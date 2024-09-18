provider "digitalocean" {
}

module "labels" {
  source      = "./../"
  name        = "app"
  environment = "test"
  label_order = ["name", "environment"]
  attributes  = ["private"]
  managedby   = "cypik"
}

