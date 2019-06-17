variable "cloudwatch_logs" {
  type    = bool
  default = false
}

variable "custom_policies" {
  type    = list(string)
  default = []
}

variable "custom_policies_count" {
  type    = number
  default = 0
}

variable "dead_letter_config" {
  type = object({
    target_arn = string
  })
  default = null
}

variable "function_name" {
  type = string
}

variable "policy_arns" {
  type    = list(string)
  default = []
}

variable "policy_arns_count" {
  type    = number
  default = 0
}

variable "tags" {
  type    = map(string)
  default = null
}

variable "vpc_config" {
  type = object({
    security_group_ids = list(string)
    subnet_ids         = list(string)
  })
  default = null
}