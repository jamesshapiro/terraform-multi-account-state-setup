resource "aws_dynamodb_table" "terraform_state" {
 name           = "terraform-state"
 billing_mode   = "PAY_PER_REQUEST"
 hash_key       = "LockID"

 attribute {
   name = "LockID"
   type = "S"
 }
}