variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

# data "aws_ami" "aws_instance" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amzn-ami-hvm*"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }


resource "aws_instance" "demoec2"{
  ami                    = "ami-0ecb1ece84d43215d"
  #ami = data.aws_ami.aws_instance.ec
  instance_type          = "t2.micro"
} 