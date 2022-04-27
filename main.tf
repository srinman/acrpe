
module "create_acr_pe" {
    source = "./acrpemodule"
    for_each = var.endpointnetwork
    peprg = var.peprg
    pepacrname = var.pepacrname
    pepacrrg = var.pepacrrg

    peplocation = each.value.additional_pep_location
    pepservicename = each.value.additional_pep_servicename
    pepname = each.value.additional_pep_name
    pepvnet  = each.value.additional_pep_vnetname
    pepsubnet = each.value.additional_pep_subnetname
    pepvnetrg = each.value.additional_pep_vnetrg
}