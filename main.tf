terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  
}

variable "key_name" {
  description = "AWS Key Pair"
  default     = "jensen"  
}
