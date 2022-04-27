pepname = "peptest"
peplocation = "westus2"
pepservicename = "westus2pep2acr"
peprg = "acigeotestrg"

pepvnet  = "vnetwestus2"
pepsubnet = "endpointsubnet"
pepvnetrg = "acigeotestrg"

pepacrname = "srinmanacrgeotest"
pepacrrg = "acigeotestrg"

endpointnetwork = {
    pep1 = {
        additional_pep_location = "westus2"
        additional_pep_vnetname = "vnetwestus2"
        additional_pep_subnetname = "endpointsubnet"
        additional_pep_vnetrg = "acigeotestrg"
        additional_pep_servicename = "srinmanacrgeotestpep1servconn"
        additional_pep_name = "srinmanacrgeotestpepwestus2"
    },
    pep2 = {
        additional_pep_location = "northeurope"
        additional_pep_vnetname = "vneteuropenorth"
        additional_pep_subnetname = "pesubnet"
        additional_pep_vnetrg = "acigeotestrg"
        additional_pep_servicename = "srinmanacrgeotestpep2servconn"
        additional_pep_name = "srinmanacrgeotestpepeuropenorth"
    }
}
