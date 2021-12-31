resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaai7sj37slvzwe5oxju5xlvcaefq2zz6numoghsxect2yd5w2tg5nq"
    description = "Compartment for Terraform resources."
    name = "bitcoin"
}
