terraform {
	required_providers {
		null = {
			source  = "hashicorp/null"
			version = "3.2.2"
		}
	}
}
resource "aws_security_group" "sg" {
	name = "${var.component_name}-${var.env}-sg"
	description = "Inbound allow for ${var.component_name}"

	ingress {
		from_port = 22
		to_port = 22
		protocol = "TCP"
		cidr_blocks = ["0.0.0.0/0"]
	}
	ingress {
		from_port = var.app_port
		to_port = var.app_port
		protocol = "TCP"
		cidr_blocks = ["0.0.0.0/0"]
	}


	egress {
		from_port = 0
		to_port = 0
		protocol = "TCP"
		cidr_blocks = ["0.0.0.0/0"]
	}
}



resource "aws_instance" "instance" {
	ami           = data.aws_ami.ami.id
	instance_type = var.instance_type
	vpc_security_group_ids = [aws_security_group.sg.id]
	tags = {
		Name = "$(var.component_name)-${var.env}"
	}

	provisioner "remote-exec" {
		connection {
			type = "ssh"
			user = "ec2-user"
			password = "DevOps32"
			host = self.private_ip
		}
		inline = [
		"sudo labauto ansible",
		" ansible-playbook -i ${self.private_ip}, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e App_name=${var.component_name} -e env=${var.env} roboshop.yml",


	]
		
	}
	
}

#   provisioner "local-exec" {

#     command = <<EOL
#  cd /home/ec2-user/Roboshop-Ansible
# user -e ansible_password=DevOps321 -e App_name=${var.component_name} -e env=${var.env} roboshop.yml


# EOL
#   }


#ansible-playbook -i 172.31.94.12, -e ansible_user=ec2-