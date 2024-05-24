variable "rg_name" {
  description = "Resource Group Name"
  type        = string
}

variable "rg_location" {
  description = "Resource Group Location"
  type        = string
}

variable "set_subscription_id" {
  description = "Provider Subscription ID "
  type        = string
}

variable "set_client_id" {
  description = "Provider Client ID"
  type        = string
}

variable "set_client_secret" {
  description = "Provider Client Secret"
  type        = string
}

variable "set_tenant_id" {
  description = "Provider Tenant ID"
  type        = string
}

variable "cpvm_name" {
    description = "Control-Plane VM Name"
    type        = string
}

variable "cpvm_username" {
    description = "Control-Plane VM Username"
    type        = string
}

variable "cpvm_password" {
    description = "Control-Plane VM Password"
    type        = string
}

variable "cpvm_size" {
    description = "Control-Plane VM Size"
    type        = string 
}

variable "cpvm_nic" {
    description = "Control-Plane VM Network Interface Name"
    type        = string
}

variable "cppublicip_name" {
    description = "Control-Plane VM Public IP Name"
    type        = string
}

variable "cpprivateip_name" {
    description = "Control-Plane VM Private IP Name"
    type        = string
}

variable "gwvm_name" {
    description = "Gateway-Worke VM Name"
    type        = string
}

variable "gwvm_username" {
    description = "Gateway-Worke VM Username"
    type        = string
}

variable "gwvm_password" {
    description = "Gateway-Worke VM Password"
    type        = string
}

variable "gwvm_size" {
    description = "Gateway-Worke VM Size"
    type        = string 
}

variable "gwvm_nic" {
    description = "Gateway-Worke VM Network Interface Name"
    type        = string
}

variable "gwpublicip_name" {
    description = "Gateway-Worke VM Public IP Name"
    type        = string
}

variable "gwprivateip_name" {
    description = "Gateway-Worke VM Private IP Name"
    type        = string
}

variable "tmvm_name" {
    description = "Traffic-Manager VM Name"
    type        = string
}

variable "tmvm_username" {
    description = "Traffic-Manager VM Username"
    type        = string
}

variable "tmvm_password" {
    description = "Traffic-Manager VM Password"
    type        = string
}

variable "tmvm_size" {
    description = "Traffic-Manager VM Size"
    type        = string 
}

variable "tmvm_nic" {
    description = "Traffic-Manager VM Network Interface Name"
    type        = string
}

variable "tmpublicip_name" {
    description = "Traffic-Manager VM Public IP Name"
    type        = string
}

variable "tmprivateip_name" {
    description = "Traffic-Manager VM Private IP Name"
    type        = string
}

variable "kmvm_name" {
    description = "Key-Manager VM Name"
    type        = string
}

variable "kmvm_username" {
    description = "Key-Manager VM Username"
    type        = string
}

variable "kmvm_password" {
    description = "Key-Manager VM Password"
    type        = string
}

variable "kmvm_size" {
    description = "Key-Manager VM Size"
    type        = string 
}

variable "kmvm_nic" {
    description = "Key-Manager VM Network Interface Name"
    type        = string
}

variable "kmpublicip_name" {
    description = "Key-Manager VM Public IP Name"
    type        = string
}

variable "kmprivateip_name" {
    description = "Key-Manager VM Private IP Name"
    type        = string
}

variable "sqlvm_name" {
    description = "Mysql-Server VM Name"
    type        = string
}

variable "sqlvm_username" {
    description = "Mysql-Server VM Username"
    type        = string
}

variable "sqlvm_password" {
    description = "Mysql-Server VM Password"
    type        = string
}

variable "sqlvm_size" {
    description = "Mysql-Server VM Size"
    type        = string 
}

variable "sqlvm_nic" {
    description = "Mysql-Server VM Network Interface Name"
    type        = string
}

variable "sqlpublicip_name" {
    description = "Mysql-Server VM Public IP Name"
    type        = string
}

variable "sqlprivateip_name" {
    description = "Mysql-Server VM Private IP Name"
    type        = string
}