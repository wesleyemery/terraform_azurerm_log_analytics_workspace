variable "sku" {
  description = "List for sku input variable. Options are: Free, PerNode, Premium, Standard, Standalone, Unlimited, and PerGB2018"
  type = string
  default = "PerGB2018"
}

variable "retention_in_days" {
  description = "The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = string
  default     = ""
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type = string
}