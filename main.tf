provider "aws"{
   region = var.aws_region
}
resource "aws_instance" "Instance"{

   ami= var.ami_ID
   instance_type = var.instance_type

   tags={
     Name= "Task17TI1"
}
}
