provider "aws" {
  region     = var.region
  access_key = "${var.scalr_aws_access_key}"
  secret_key = "${var.scalr_aws_secret_key}"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "test_instance1" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet
  associate_public_ip_address = var.associate_public_ip

  tags = merge({ "Name" = format("kotov-tf-test -> %s -> %s", data.aws_ami.ubuntu.name, timestamp()) }, var.tags)
  timeouts {
    create = "10m"
    delete = "15m"
  }
 }


resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = "us-east-1a"
        size = 2
    type = "gp2"
    }



data "aws_iam_policy_document" "bucket_policy" {
  statement {
    sid       = "AllowFullS3Access"
    actions   = ["s3:ListAllMyBuckets"]
    resources = ["*"]
  }
}


#output "scalr_test_public_ip" {
 # value = "${aws_instance.test_instance1.*.public_ip}"
#}
#output "scalr_test_private_ip" {
#  value = "${aws_instance.test_instance1.*.private_ip}"
#}