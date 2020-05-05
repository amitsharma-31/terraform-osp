variable "openstack_user_name" {
  description = "The username for the test12 Proj"
  default     = "test-user12"               #Openstack user name
}

variable "openstack_tenant_name" {
  description = "The name of the Tennant."
  default     = "test12"
}

variable "openstack_password" {
  description = "The Password for the Tennant"
  default     = "PASSWORD"
}

variable "openstack_auth_url" {
  description = "The endpoint url to connect to OpenStack."
  default     = "https://OPENSTACKAPI:PORT<5000 or 13000, etc>/"  #openstack auth url endpoint
}

variable "openstack_keypair" {
  description = "The keypair to be used."
  default     = "my_keypair"               #Your key pair which you can generate with "ssh-keygen -f my_kepair" command
}

variable "tenant_network" {
  description = "The network to be used."
  default     = "net-name"                #Network name which exist can be used at openstack level
}
