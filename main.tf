module "devops" {
  source = "modules/devops"
  compartment_id = var.devops_compartment_id # Both DevOps project and OCIR will be here
  region = var.region
  notification_topic_name = var.notification_topic_name
  notification_topic_description = var.notification_topic_description
  devops_project_name = var.devops_project_name
  devops_project_description = var.devops_project_description
  devops_log_group_name = var.devops_log_group_name
  devops_log_group_description = var.devops_log_group_description
  devops_log_retention_period_in_days = var.devops_log_retention_period_in_days

  git_username = local.git_username
  git_password = var.auth_token
  ocir_repo_path_prefix = var.ocir_repo_path_prefix
}