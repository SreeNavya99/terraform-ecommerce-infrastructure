
terraform {
  backend "s3" {
    bucket         = "terraform-bootstrap-dev-1624"
    key            = "ecommerce/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terraform-bootstrap-lock"
    encrypt        = true
  }
}
