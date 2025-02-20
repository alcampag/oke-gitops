resource "oci_identity_dynamic_group" "devopsdeploypipeline" {
  compartment_id = var.compartment_id
  description    = ""
  matching_rule  = "ALL {resource.type = 'devopsdeploypipeline', resource.compartment.id = '${var.compartment_id}'}"
  name           = ""
}