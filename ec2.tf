resource "aws_instance" "web_server" {

  ami = "ami-0199ac7c9fbf9ed83"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet_1.id
  key_name = "Nirmala"
  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id

    ]

  user_data = <<-EOF
#!/bin/bash
apt update -y
apt install apache2 -y
systemctl start apache2
systemctl enable apache2

echo "<h1>Hello Mama From Terraform</h1>" > /var/www/html/index.html

EOF

  tags = {

    Name = "WebServer"


       }

       }





