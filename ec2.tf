# data "aws_vpc" "mouritech_vpc"{
#   #id = data.aws_vpc.mouritech_vpc
#   default = true
# }
resource "aws_instance" "example" {
  ami            = "${var.ec2-instance}"
  #subnet_id      = "[aws_subnet.subnet1.id]"
  #vpc_id         = "[aws_vpc.example.id]"
  instance_type = "t2.micro"
   # vpc_id = data.aws_vpc.mouritech_vpc.id

  tags = {
    Name = "${var.ec2-instance-name}"
  }
}

