
resource "tls_private_key" "ssh_keys" {
  for_each  = var.hosts
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "pem_files" {
  for_each        = var.hosts
  content         = tls_private_key.ssh_keys[each.value].private_key_pem
  filename        = "${path.module}/${each.value}.pem"
  file_permission = "0600"
}
