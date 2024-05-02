output "public_ip" {
  value = aws_instance.app_server.public_ip
}

output "public_dns" {
  value = aws_instance.app_server.public_dns
}


output "ssh_command_dns" {
  value = "ssh -i key.pem ubuntu@${aws_instance.app_server.public_dns}"
}
