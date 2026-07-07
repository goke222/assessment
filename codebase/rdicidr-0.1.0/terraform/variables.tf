# In this file put the variables related to the deployment
variable "origin_bucket" {
    type = string
    description = "The name of the origin bucket"
    default = "my-bucket001"
}

variable "aws_region" {
    type = string
    description = "The AWS region to deploy the resources"
    default = "us-east-1"
}