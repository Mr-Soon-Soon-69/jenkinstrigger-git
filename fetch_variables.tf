provider "aws" {
  region     = "ap-southeast-1"
  profile    = "default"
  }



resource "aws_instance" "myec2" {
  ami           = "ami-0779c82fbb81e731c"
  instance_type = ar.list[2]
}

# variable type include string,number,list and map
variable "list" {
  type    = list(any)
  default = ["t2.nano", "t2.small", "t2.medium"]

}

variable "types" {
  type = map(any)
  default = {
    us-east-1      = "t2.nano"
    us-west-2      = "t2.small"
    ap-southeast-1 = "t2.micro"
  }
}

#variable value can input via cli and value can be change