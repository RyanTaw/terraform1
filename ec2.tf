provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform_demo" {
    ami = "ami-026b57f3c383c2eec"
    instance_type = "t2.nano"
    key_name = "key1"
    tags = {
        Name = "Jenkins"
        Env = "dev"

    }
}

output "public-ip" {
    value = aws_instance.terraform_demo.public_ip
}
output "public-dns" {
    value = aws_instance.terraform_demo.public_dns
}