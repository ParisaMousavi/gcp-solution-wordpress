module "name" {
  source           = "github.com/ParisaMousavi/gcp-naming?ref=master"
  prefix           = var.prefix
  name             = var.name
  environment      = var.environment
  region_shortname = var.region_shortname
}

module "vm" {
  source          = "github.com/ParisaMousavi/gcp-vm?ref=main"
  name            = module.name.vm
  machine_type    = "n1-standard-1"
  additional_tags = ["parisamoosavinezhad"]
  initialize_params = {
    image = "debian-cloud/debian-11"
    labels = {
      my_label = "value"
    }
  }
  network_interface = {
    network_name    = data.terraform_remote_state.network.outputs.vpc1_name
    subnetwork_name = data.terraform_remote_state.network.outputs.vpc1_subnets["vm"].name
  }
}
