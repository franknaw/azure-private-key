output "ssh_keys" {
    description = "Map of ssh keys defined by var.hosts."
    value = tls_private_key.ssh_keys #.*.public_key_pem
}
