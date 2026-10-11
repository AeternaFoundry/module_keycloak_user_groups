output "user_groups_id" {
  description = "Map of id values across all user_groups, keyed the same as var.user_groups except keys with no id are omitted"
  value       = { for k, v in keycloak_user_groups.user_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_groups_exhaustive" {
  description = "Map of exhaustive values across all user_groups, keyed the same as var.user_groups except keys with no exhaustive are omitted"
  value       = { for k, v in keycloak_user_groups.user_groups : k => v.exhaustive if v.exhaustive != null }
}
output "user_groups_group_ids" {
  description = "Map of group_ids values across all user_groups, keyed the same as var.user_groups except keys with no group_ids are omitted"
  value       = { for k, v in keycloak_user_groups.user_groups : k => v.group_ids if v.group_ids != null && length(v.group_ids) > 0 }
}
output "user_groups_realm_id" {
  description = "Map of realm_id values across all user_groups, keyed the same as var.user_groups except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_user_groups.user_groups : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "user_groups_user_id" {
  description = "Map of user_id values across all user_groups, keyed the same as var.user_groups except keys with no user_id are omitted"
  value       = { for k, v in keycloak_user_groups.user_groups : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

