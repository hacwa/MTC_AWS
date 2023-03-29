# --- compute/main.tf

data "aws_ami" "server_ami" {
    most_recent = true
    owners = [ "099720109477" ]
    filter {
      name = "name"
      values = [ "ubuntu-pro-server/images/hvm-ssd/ubuntu-focal-20.04-amd64-pro-server-*" ]
    }
}

resource "random_id" "mtc_node_id" {
    byte_length = 2
    count = var.instance_count  
}

resource "aws_instance" "mtc_node" {
    count = var.instance_count #1
    instance_type = var.instance_type # t3.micro
    ami = data.aws_ami.server_ami.id
    tags = {
      "Name" = "mtc_node=${random_rd.mtc_node_id[count.index].dec}"
    }
  
# Key_name = ""
vpc_security_group_ids = [var.public_sg]
subnet_id = var.public_subnets[count.index]
#user_data = ""
root_block_device {
    volume_size = var.vol.side # 10
    }
}