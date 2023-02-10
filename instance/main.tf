resource "aws_instance" "bastion" {
  image_id      = data.aws_ami.latest_ubuntu.id
  instance_type = var.instance_type
}

resource "aws_network_interface" "test" {
  subnet_id       = var.public_subnet_ids
  private_ips     = ["10.0.0.50"]
  security_groups = [aws_security_group.security.id]

  attachment {
    instance     = aws_instance.bsstion.id
    device_index = 1
  }
}





data "aws_ami" "latest_ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230115*"]
  }
}