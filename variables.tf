//SHARED VARIABLES
variable "product" {
  type = string
  description = "The name of your application"
  default = "civil"
}

variable "env" {
  type = string
  description = "The deployment environment (sandbox, aat, prod etc..)"
}

variable "subscription" {
  type = string
}

variable "location" {
  type    = string
  description = "The location where you would like to deploy your infrastructure"
  default = "UK South"
}

variable "tenant_id" {
  description = "(Required) The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. This is usually sourced from environment variables and not normally required to be specified."
}

variable "jenkins_AAD_objectId" {
  description = "(Required) The Azure AD object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies."
}

// TAG SPECIFIC VARIABLES
variable "common_tags" {
  type = map(string)
}

variable "team_contact" {
  type        = string
  description = "The name of your Slack channel people can use to contact your team about your infrastructure"
  default     = "#civil_contact"
}

variable "destroy_me" {
  type        = string
  description = "Here be dragons! In the future if this is set to Yes then automation will delete this resource on a schedule. Please set to No unless you know what you are doing"
  default     = "No"
}
