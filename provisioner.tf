resource "aws_instance" "example_instance" {
  ami           = "ami-0195204d5dce06d99"
  instance_type = "t2.micro"
  key_name      = "devops-batch-2"

  tags = {
    Name = "ExampleInstance"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("C:/Users/sumit/Downloads/devops-batch-2.pem")
    timeout     = "2m"
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Public IP: ${self.public_ip}' > /home/ec2-user/server_info.txt",
      "echo 'Instance ID: ${self.id}' >> /home/ec2-user/server_info.txt"
    ]
  }
}
