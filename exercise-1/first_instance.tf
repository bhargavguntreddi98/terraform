provider "aws" {
  region     = "us-east-1"
  access_key = "AKIARDVALTG3DWR5YCFQ"
  secret_key = "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"
}


resource "aws_instance" "intro" {
  ami                    = "ami-053b0d53c279acc90"
  instance_type          = "t2.micro"
  key_name               = "basic"
  vpc_security_group_ids = ["sg-09438a9fbfc5ef5b3"]
  tags = {
    Name = "speed"
  }
}

