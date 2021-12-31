# Source from https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list

resource "oci_core_security_list" "private-security-list"{

    # Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaatafuwuopprqdl6r5da6mdrgcbu33vqnvitoiiwik34j2md4g57vq"
    vcn_id = module.vcn.vcn_id

    # Optional
    display_name = "bitcoin-private-subnet"

    egress_security_rules {
        stateless = false
        destination = "0.0.0.0/0"
        destination_type = "CIDR_BLOCK"
        protocol = "all"
    }

}
