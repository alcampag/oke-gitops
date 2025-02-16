variable "compartment_id" {}
variable "region" {}

# NOTIFICATION
variable "notification_topic_name" {}
variable "notification_topic_description" {}

# PROJECT
variable "devops_project_name" {}
variable "devops_project_description" {}

# DEVOPS PROJECT LOG GROUP
variable "devops_log_group_name" {}
variable "devops_log_group_description" {}
variable "devops_log_retention_period_in_days" {
  type = number
}

# SECRETS
variable "git_username" {}
variable "git_password" {}

# TEMPLATE
variable "ocir_repo_path_prefix" {}