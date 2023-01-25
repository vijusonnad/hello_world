output "name" {
    description = "Username to Login"
    value = [oci_identity_user.this.name]
}