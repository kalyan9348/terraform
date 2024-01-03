#resource "aws_instance" "web" {
#  ami = "ami-03265a0778a880afb" #Devops-practice
#  instance_type = "t3.micro"
#
#  tags = {
#    Name = "HelloTerraform"
#  }
#}

#sudo yum install -y yum-utils
#sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
#sudo yum -y install terraform
#
resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" #Devops-practice
  instance_type = "t3.micro"

  tags = {
    Name = "web"
  }
}

resource "aws_security_group" "roboshop-all" {   #this is terraform name, for terraform reference only
  name        = "roboshop-all-aws"  # this is for AWS
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Allow all ports"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}