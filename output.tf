output "ssh_keys" {
    description = "Set of ssh keys defined by var.hosts."
    value = tls_private_key.ssh_keys
}
