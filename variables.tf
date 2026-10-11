variable "user_groups" {
  description = <<EOT
Map of user_groups, attributes below
Required:
    - group_ids
    - realm_id
    - user_id
Optional:
    - exhaustive
EOT

  type = map(object({
    group_ids  = set(string)
    realm_id   = string
    user_id    = string
    exhaustive = optional(bool)
  }))
}

