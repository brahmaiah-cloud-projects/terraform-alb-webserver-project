resource "aws_security_group" "alb_sg" {

  name = "ALB-SG"

  vpc_id = aws_vpc.main.id

  description = "Allow HTTP From Internet"

  ingress {
 
    from_port = 80
    to_port = 80
    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]


  }

  egress {

    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]


    }
  
  tags = {
   
    Name = "ALBSecurityGroup"


     }

    
    }



resource "aws_security_group" "ec2_sg" {

  name = "EC2-SG"

  description = "Allow HTTP Traffic From ALB SG"

  vpc_id = aws_vpc.main.id

  ingress {

    from_port = 80
    to_port = 80
    protocol = "tcp"

    security_groups = [aws_security_group.alb_sg.id]

   }


  ingress {

    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]


     }


  egress {

    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]


    }


  tags = {

    Name = "EC2SecurityGroup"


       }

       }


  