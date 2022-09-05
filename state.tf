# Note: comment this out for the first terraform apply, then uncomment

terraform {
 backend "s3" {
   bucket         = "athens-terraform-state-files"
   key            = "state/terraform.tfstate"
   region         = "us-east-1"
   dynamodb_table = "terraform-state"
   #role_arn       = "arn:aws:iam::${var.account_id}:role/deploy"
 }
}