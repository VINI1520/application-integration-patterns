variable "table_name" {
  description = "The name of the DyanamoDB table"
  type        = string
  default = "SynchronousApiExample"
}

variable "code_bucket_name" {
  description = "The name of the S3 bucket to store Lambda source code"
  type        = string
  default = "synchronous-api-source-code-bucket-appid00002"
}

variable "app_identifier" {
  description = "The identifier of the application"
  type        = string
  default = "appid"
}