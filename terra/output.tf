output "instance_id" {
       description = " The ID of EC2 instance"
       value = aws_instance.Instance.id
}

output "public_ip" {
       description = " The Public IP "
       value = aws_instance.Instance.public_ip
}
