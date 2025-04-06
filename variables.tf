variable "name" {
  description = "Name of the DDoS Protection Plan"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the DDoS Protection Plan will be created."
  type        = string
}

variable "location" {
  description = "Location of the DDoS Protection Plan, if not set, it will be the same as the resource group."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to be applied to the DDoS Protection Plan."
  type        = map(string)
  default     = {}
}