variable "instance_names" {
   type = list
   default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "zone_id" {
  default = "Z062815430DMB9RUXA69R"
}

variable "domain_name" {
  default = "practiceazure.com"
}