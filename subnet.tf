resource "aws_subnet" "public_subnet_1" {

  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-2a"
  map_public_ip_on_launch = true

  tags = {

    Name = "PublicSubnet1"

     }
 
     }

output "public_subnet_id_1" {
  value = aws_subnet.public_subnet_1.id

   }



resource "aws_subnet" "public_subnet_2" {

  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet2"

   }

   }

output "public_subnet_id_2" {
  value = aws_subnet.public_subnet_2.id

    }

  