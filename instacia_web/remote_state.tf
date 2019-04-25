terraform {
  backend "s3" {
    bucket = "zinet-sistemas"
    key    = "terraform/states/web-instance.tfstate"
    region = "eu-west-1"
    #dynamodb_table = "terraform-state-lock-dynamo" # aqui va la tabla que creemos en DynamoDB
  }
}
