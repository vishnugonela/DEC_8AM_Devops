 ##Example AWS resources
#######################

provider "aws" {
  region = "us-east-1"
}

########################
# VPC
########################
resource "aws_vpc" "main_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "apache-vpc"
  }
}

########################
# Subnet
########################
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "apache-public-subnet"
  }
}

########################
# Internet Gateway
########################
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "apache-igw"
  }
}

########################
# Route Table
########################
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "apache-public-rt"
  }
}

resource "aws_route_table_association" "rt_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

########################
# Security Group
########################
resource "aws_security_group" "apache_sg" {
  name        = "apache-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "apache-sg"
  }
}

########################
# EC2 Instance
########################
resource "aws_instance" "apache_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.apache_sg.id]
  key_name      = "your-keypair-name"   # Replace with your key

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Apache Server Created using Terraform</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Apache-Terraform-Server"
  }
}

########################
# Output
########################
output "public_ip" {
  value = aws_instance.apache_server.public_ip
}


########################
# EC2 Instance
########################
resource "aws_instance" "apache_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.apache_sg.id]
  key_name      = "your-keypair-name"   # Replace with your key

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Apache Server Created using Terraform</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Apache-Terraform-Server"
  }
}

########################
# Output
########################
output "public_ip" {
  value = aws_instance.apache_server.public_ip
}







