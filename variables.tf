variable "storage_containers_lookup" {
  description = <<EOT
Map of storage_containers_lookup, attributes below
Required:
    - storage_account_id
Optional:
    - name_prefix
EOT

  type = map(object({
    storage_account_id = string
    name_prefix        = optional(string)
  }))
}

