 provider "aws" {
   region  = "us-east-1"
}




resource "aws_instance" "nodeDeploy" {
    ami = "ami-026b57f3c383c2eec"
    count = "1"
    key_name   = "testlab"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-1"]
    tags = {
        Name = "nodedeploy"
    } 
    user_data = file("node.sh")
   

}