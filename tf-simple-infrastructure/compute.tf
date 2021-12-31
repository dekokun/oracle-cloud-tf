resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = oci_identity_compartment.tf-compartment.id
    shape = "VM.Standard.A1.Flex"
    shape_config {
        memory_in_gbs = 6
        ocpus = 1
    }
    source_details {
        source_id = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaac2t4hu43w4fxidje6tou6wu5f5pujjvdyz2prad35hqwynh75akq"
        source_type = "image"
    }

    # Optional
    display_name = "bitcoin-full-node"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    metadata = {
        ssh_authorized_keys = file("~/.ssh/id_rsa.pub")
    }
    preserve_boot_volume = false
}
