resource "aws_instance" "intro" {

  ami                    = var.AMIS[var.Region] # access the ami-id from the region assigned
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE2
  key_name               = "basic"
  vpc_security_group_ids = ["sg-09438a9fbfc5ef5b3"]
  tags = {
    Name = "Developer"
  }
}
