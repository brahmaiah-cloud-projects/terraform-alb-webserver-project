output "vpc_id" {

  value = aws_vpc.main.id 


  }


output "public_subnet_1_id" {

  value = aws_subnet.public_subnet_1.id

  }

output "public_subnet_2_id" {

  value = aws_subnet.public_subnet_2.id

  }


output "alb_dns_name" {

  value = aws_lb.alb.dns_name
 
  }

output "instance_id" {

  value = aws_instance.web_server.id

  }