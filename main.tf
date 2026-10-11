resource "keycloak_user_groups" "user_groups" {
  for_each = var.user_groups

  group_ids  = each.value.group_ids
  realm_id   = each.value.realm_id
  user_id    = each.value.user_id
  exhaustive = each.value.exhaustive
}

