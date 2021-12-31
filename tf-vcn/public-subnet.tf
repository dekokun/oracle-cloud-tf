# Source from https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet

resource "oci_core_subnet" "vcn-public-subnet"{

  # Required
  compartment_id = "ocid1.compartment.oc1..aaaaaaaatafuwuopprqdl6r5da6mdrgcbu33vqnvitoiiwik34j2md4g57vq"
  vcn_id = module.vcn.vcn_id
  cidr_block = "10.0.0.0/24"

  # Optional
  route_table_id = module.vcn.ig_route_id
  security_list_ids = [oci_core_security_list.public-security-list.id]
  display_name = "public-subnet"
}
