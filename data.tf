data "terraform_remote_state" "network" {
  backend = "gcs"
  config = {
    bucket = var.terraform_remote_state_bucket
    prefix = "enterprise-network/weu4/default.tfstate"
  }
}