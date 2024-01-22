variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map
  default = {
    Name = "Hello Terraform"
    Project = "Roboshop"
    Enviroment = "DEV"
    Component = "Web"
    Terraform = "true"  # means this instance created by terraform, not manual
  }
}
 
 variable "sg-name" {
  type = string
  default = "roboshop-all"
}

 variable "sg-description" {
  type = string
  default = "allowing all ports"
}

 variable "inbound-from-port" {
  type = number
  default = 0
}

 variable "cidr-blocks" {
  type = list
  default = ["0.0.0.0/0"]
}


