variable "AWS_ACCESS_KEY"{
    type = string
}
variable "AWS_SECRET_KEY"{
    type = string
}
variable "AWS_REGION"{
    default = "eu-east-1"
}

variable "ami" {
    default = "ami-053b0d53c279acc90"
}