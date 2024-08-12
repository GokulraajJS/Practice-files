provider "aws"{
   alias = "region1"
   region = var.aws_region_1
}
provider "aws"{
   alias = "region2"
   region = var.aws_region_2
}
resource "aws_instance" "ec2_instance_1" {
    provider = aws.region1
    ami = var.ami_ID_1
    instance_type = var.instance_type
    user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install nginx -y
              EOF
    tags = {
    Name = "My_instance_1"
}
}
resource "aws_instance" "ec2_instance_2" {
    provider = aws.region2
    ami = var.ami_ID_2
    instance_type = var.instance_type
    user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install nginx -y              
              EOF
    tags = {
    Name = "My_instance_2"
}
}

