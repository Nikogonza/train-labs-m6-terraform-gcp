## Resources
# RESOURCE - NETWORK
module "vpc" {
  source          = "./modules/terraform-gcp-vpc"
  network_name    = "${var.net_name}-${local.environment}"
}

# RESOURCE - COMPUTE INSTANCE
module "instance" {
  source          = "./modules/terraform-gcp-compute-engine"
  network_name    = module.vpc.vpc_name
  instance_name   = "${var.instance_name}-${local.environment}"
  instance_type   = var.instance_type
  instance_image  = var.instance_image

}