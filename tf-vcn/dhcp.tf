# Source from https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_dhcp_options

resource "oci_core_dhcp_options" "dhcp-options"{

  # Required
  compartment_id = "ocid1.compartment.oc1..aaaaaaaatafuwuopprqdl6r5da6mdrgcbu33vqnvitoiiwik34j2md4g57vq"
  vcn_id = module.vcn.vcn_id
  #Options for type are either "DomainNameServer" or "SearchDomain"
  options {
      type = "DomainNameServer"
      server_type = "VcnLocalPlusInternet"
  }

  # Optional
  display_name = "default-dhcp-options"
}
