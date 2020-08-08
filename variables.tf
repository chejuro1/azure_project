variable "subscription_id" {
    description = "ARM_SUBSCRIPTION_ID"
}

variable "client_secret" {
    description = "client_secret"
}

variable "client_id" {
    description = "client_id"
}
variable "tenant_id" {
    description = "tenant_id"
}

variable "address_space" {
   
    description = "address_space"
    default     = ["10.0.0.0/16"]
}

 variable "location" {
    description = "location"
    default     = "eastus"
}

#variable "address_prefix" {   
# description = "address_prefixes"
 #   default  = ["10.0.2.0/24"]
#}

