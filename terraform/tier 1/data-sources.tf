provider "aws" {
  region = "ap-northeast-1" //change to your region //changed
}

data "aws_availability_zones" "available" {
}

data "aws_region" "current" {}

# Define VPC
data "aws_vpc" "default" {
  default = true
}

data "aws_key_pair" "toby_1" { //change //changed //name of key pair is key card
  key_name = "toby_1" //change //changed
}

variable "private_subnets" {
  default = {
    "tier_1"  = 250 //can be any number as long as walang conflict  //changed //must be around 0 to 32
  }
}