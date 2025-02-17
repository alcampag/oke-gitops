resource "oci_devops_build_pipeline" "mirror_argocd" {
  project_id = oci_devops_project.devops_project.id
  display_name = "mirror-argocd"
  description = "Pipeline to mirror the public Helm Chart of ArgoCD into the tenancy OCIR"
}

resource "oci_devops_build_pipeline_stage" "mirror_argocd_stage" {
  build_pipeline_id         = oci_devops_build_pipeline.mirror_argocd.id
  build_pipeline_stage_type = "BUILD"
  build_pipeline_stage_predecessor_collection {
    items {
      id = oci_devops_build_pipeline.mirror_argocd.id
    }
  }
  build_source_collection {
    items {
      connection_type = "DEVOPS_CODE_REPOSITORY"
      branch = "main"
      name = "pipelines"
      repository_id = oci_devops_repository.devops_pipelines_repo.id
      repository_url = oci_devops_repository.devops_pipelines_repo.http_url
    }
  }
  build_spec_file = "mirror_argo.yaml"
  display_name = "Mirror Helm Chart"
  description = "Stage to import a public Helm Chart into the tenancy Oracle Container Registry"
  primary_build_source = "pipelines"
  stage_execution_timeout_in_seconds = 36000
}