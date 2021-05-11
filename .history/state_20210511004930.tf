terraform {
  backend "s3" {
    bucket = "terrafrom-learning-bucket"
    key    = "stage/terraform.tfstate"
    region = "us-east-1"
    
  }
}
