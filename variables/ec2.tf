resource "aws_instance" "web" {
  ami           = var.ami_id #devops-practice
  instance_type = "t2.micro"
  #vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list
  #the above command given because we are adding security group for our instance.
  tags = { #{} indicates map , so in variables.tf file declared every value cearly.
    Name = "HelloTerraform"
  }
}