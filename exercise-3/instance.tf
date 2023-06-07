resource "aws_key_pair" "masterkey" {
  key_name   = "masterkey"
  public_key = file("masterkey.pub")
}

resource "aws_instance" "intro" {

  ami                    = var.AMIS[var.Region]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "masterkey"
  vpc_security_group_ids = ["sg-09438a9fbfc5ef5b3"]
  tags = {
    Name = "Developer"
  }


  provisioner "file" {
    source      = "./web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {

    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.User
    private_key = file("masterkey")
    host        = self.public_ip
  }

}

output "PublicIp" {
 value = aws_instance.intro.public_ip
}
