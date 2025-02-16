variable "region" {}
variable "tenancy_ocid" {}
variable "current_user_ocid" {}
variable "compartment_ocid" {}

# DEVOPS PROJECT
variable "devops_compartment_id" {}
variable "devops_project_name" {
  default = "oke-gitops"
}
variable "devops_project_description" {
  default = null
}

# DEVOPS LOG GROUP
variable "devops_log_group_name" {
  default = "devops-log-group"
}
variable "devops_log_group_description" {
  default = null
}
variable "devops_log_retention_period_in_days" {
  type = number
  default = 30
}

# NOTIFICATION
variable "notification_topic_name" {
  default = "oke-gitops-topic"
}
variable "notification_topic_description" {
  default = null
}

# REPOSITORY
variable "ocir_repo_path_prefix" {
  default = "acme/helm"
}
variable "auth_token" {
  sensitive = true
}