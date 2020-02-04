variable "name_prefix" { type = string }
variable "aws_region" { default = null }
variable "skip_final_snapshot" { default = false }
variable "resource_tags" {
  type    = map
  default = {}
}
variable "admin_password" {
  description = "Must be 8 characters long."
  type        = string
  default     = null
}
variable "elastic_ip" {
  type    = string
  default = null
}
variable "node_type" {
  description = "Enter the desired node type. The default and cheapest option is 'dc2.large' @ ~$0.25/hr  (https://aws.amazon.com/redshift/pricing/)"
  type        = string
  default     = "dc2.large"
}
variable "num_nodes" {
  type    = number
  default = 1
}
variable "jdbc_port" { default = 5439 }
variable "kms_key_id" {
  type    = string
  default = null
}
variable "s3_logging_bucket" {
  type    = string
  default = null
}
variable "s3_logging_path" {
  type    = string
  default = null
}