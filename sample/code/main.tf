resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0b308c7134616a7ce"]  #   The snippet code flower braces is used to create an instance in aws with the name tagThis as frontend
  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z00196431INWTJ0O5YT57"
  name    = "frontend-dev.devops11.online" #   The snippet code flower braces is used to create an dns record in aws as frontend
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

variable "url" {} # Declaration of a variable

output "" {
  value = ""  #  Accessing a variable. important Using double quotes in output's value Here terraform considers this as string ans prints as it ,instead of desired ones.
}
