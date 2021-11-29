locals {
  env = terraform.workspace == "default" ? "not use default workspace, instead use dev (dev), prod       (prod      )" : terraform.workspace
  
  project_ids = {
    dev              = var.project
    prod             = var.project
  }
  environments = {
    dev              = "dev"
    prod             = "prod"
  }

  regions = {
    dev              = "us-central1"
    prod             = "us-central1"
  }

  zones = {
    dev              = "us-central1-c"
    prod             = "us-central1-c"
  }
 # lookup recupera el valor de un solo elemento de un mapa, dada su clave. Si la clave dada no existe, se devuelve el valor predeterminado dado.
 # lookup(map, key, default) 
 # DOC: https://www.terraform.io/docs/language/functions/lookup.html

  project_id                          = lookup( local.project_ids, local.env)
  environment                         = lookup( local.environments, local.env)
  region                              = lookup( local.regions, local.env)
  zone                                = lookup( local.zones, local.env)
}