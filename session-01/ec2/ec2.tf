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