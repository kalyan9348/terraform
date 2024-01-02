resource "aws_instance" "web" {
  ami = "ami-03265a0778a880afb" #Devops-practice
  instance_type = "t3.micro"

  tags = {
    Name = "HelloTerraform"
  }
}