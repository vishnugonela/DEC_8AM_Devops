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

