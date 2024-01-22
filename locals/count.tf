# resource "aws_instance" "web" {
#   count = length(var.instance_names) # it will create the 11 instances which are on the list in variables file
#   ami           = var.ami_id #devops-practice
#   instance_type = local.instance_type
#   tags = {
#     Name = var.instance_names[count.index]
#   }
# } 


# resource "aws_route53_record" "www" {
#   #count = 11
#   count = length(var.instance_names)
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}"  #terraform interpolation
#   type    = "A"
#   ttl     = 1
#   records = [local.ip]
# }           # instance name is web, then we must have public ip, others private ip

resource "aws_instance" "web" {
  ami           = var.ami_id #devops-practice
  instance_type = local.instance_type
  tags = {
    Name = "locals"
  }
}