variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "app_service_plan_name" {
  type        = string
  description = "Name of the app service plan"
}

variable "web_app_name_1" {
  type        = string
  description = "Name of the web app"
}


variable "web_app_name_2" {
  type        = string
  description = "Name of the web app"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
  default     = "West US"

}
