terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "terrafrom-learning-bucket"
    key    = "roboshop/dev/vpc/terraform.tfstate"

    
  }
}
