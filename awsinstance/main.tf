provider "aws" {
    version = "2.69.0"
    region="us-west-2"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "myTag" {
  description = "xcenter_vra_migration_test"
  default = "xcenter_vra_migration_test"
}

resource "aws_instance" "machine1" {
    ami           = "ami-0a36eb8fadc976275"
    instance_type = "t2.micro"
    availability_zone = "us-west-2a"
    tags = {
      "type" = var.myTag
    }
}


