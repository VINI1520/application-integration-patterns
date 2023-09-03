variable "table_name" {
  description = "The name of the DyanamoDB table"
  type        = string
  default = "SynchronousApiExample"
}

variable "code_bucket_name" {
  description = "The name of the S3 bucket to store Lambda source code"
  type        = string
  default = "synchronous-api-source-code-bucket"
}

variable "app_identifier" {
  description = "The identifier of the application"
  type        = string
  default = ""
  validation {
    condition = length(var.app_identifier) > 1 && substr(var.app_identifier, 0, 5) == "appid"
    error_message = "The app_identifier value must be a valid appid, starting with \"appid\"."
  }
}