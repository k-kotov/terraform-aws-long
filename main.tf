provider "aws" {
  region     = "eu-central-1"
}

resource "aws_instance" "base-ubuntu1604-devel2-201906270507" {
  ami           = "ami-04c8b7095c907cd8b"
  instance_type = "t2.nano"
}

resource "aws_instance" "base-ubuntu1604-devel2-201906270507" {
  ami           = "ami-04c8b7095c907cd8b"
  instance_type = "t2.nano"
}
