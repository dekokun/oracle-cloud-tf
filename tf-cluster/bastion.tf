resource "oci_bastion_bastion" "bastion" {
  #Required
  bastion_type     = "STANDARD"
  compartment_id   = oci_identity_compartment.tf-compartment.id
  target_subnet_id = oci_core_subnet.vcn-private-subnet.id

  #Optional
  max_session_ttl_in_seconds   = 1800
  name                         = "cryptbastion"
  client_cidr_block_allow_list = ["0.0.0.0/0"]
}
