# Source from https://registry.terraform.io/modules/oracle-terraform-modules/vcn/oci/

module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.1.0"
  # insert the 4 required variables here
  # Required
  compartment_id = oci_identity_compartment.tf-compartment.id
  region = "ap-tokyo-1"
  vcn_name = "crypt"
  vcn_dns_label = "crypt"

  # Optional
  create_internet_gateway = true
  create_nat_gateway = true
  create_service_gateway = true
  vcn_cidrs = tolist(["10.0.0.0/16"])
}
