variable "aws_region_1" {
   description = "Test region_1"
   type = string
   default = "us-east-1"
}
variable "aws_region_2" {
   description = "Test region_2"
   type = string
   default = "ap-south-1"
}
variable "ami_ID_1" {
   description = "Test AMI_ID_1"
   type = string
   default = "ami-04a81a99f5ec58529"
}
variable "ami_ID_2" {
   description = "Test AMI_ID_2"
   type = string
   default = "ami-068e0f1a600cd311c"
}
variable "instance_type"{
   description = "Test Instnace type"
   type = string
   default = "t2.micro"
}

