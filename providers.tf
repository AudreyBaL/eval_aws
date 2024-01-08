terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
#Configuration du backend
backend "s3" {
    bucket = "formationaws1"
    key    = "tfstate/formationaws1.tfstate"
    region = "eu-west-3"
 }

}

# configuration du provider AWS
provider "aws" {
  region     = var.aws_region 
  access_key = "your_access_key" 
  secret_key = "your_secret_key" 
}


