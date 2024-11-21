#ec2 instance

resource "aws_instance" "Jenkins" {
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
    key_name = "keypair final"

    tags = {
        Name = "Jenkins-server"
    }
}

resource "aws_instance" "web-app" {
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
    key_name = "keypair final"

    tags = {
        Name = "flask-web-application"
    }
}