resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"  #devops-practice
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]  #this means list

  tags = {
    Name = "HelloTerraform"
  }
}

resource "aws_security_group" "roboshop-all" {  # this is terraform name, for terraform reference only
  name        = "var.sg-name"                  # this is aws name
  description = "var.sg-description"
  #vpc_id      = aws_vpc.main.id      # If we are not giving default vpc, it will take default vpc.

ingress {
    description      = "Allow all Ports"
    from_port        = var.inbound-from-port  # zero means all ports
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr-blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]  #we are working with ipv4, so commenting ipv6
  }


egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]                      #we are working with ipv4, so commenting ipv6
}

tags = {
    Name = "allow_roboshop"
  }
}
