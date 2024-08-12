terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

data "vault_generic_secret" "aws_creds" {
  path = "secret/demo"
}
provider "aws" {
  region = data.vault_generic_secret.aws_creds.data["region"]
  access_key = data.vault_generic_secret.aws_creds.data["aws_access_key_id"]
  secret_key = data.vault_generic_secret.aws_creds.data["aws_secret_access_key"]
}

resource "aws_instance" "demo"{
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"
}

