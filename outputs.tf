output "users_id" {
  description = "Map of id values across all users, keyed the same as var.users except keys with no id are omitted"
  value       = { for k, v in datadog_user.users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_disabled" {
  description = "Map of disabled values across all users, keyed the same as var.users except keys with no disabled are omitted"
  value       = { for k, v in datadog_user.users : k => v.disabled if v.disabled != null }
}
output "users_email" {
  description = "Map of email values across all users, keyed the same as var.users except keys with no email are omitted"
  value       = { for k, v in datadog_user.users : k => v.email if v.email != null && length(v.email) > 0 }
}
output "users_name" {
  description = "Map of name values across all users, keyed the same as var.users except keys with no name are omitted"
  value       = { for k, v in datadog_user.users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "users_roles" {
  description = "Map of roles values across all users, keyed the same as var.users except keys with no roles are omitted"
  value       = { for k, v in datadog_user.users : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "users_send_user_invitation" {
  description = "Map of send_user_invitation values across all users, keyed the same as var.users except keys with no send_user_invitation are omitted"
  value       = { for k, v in datadog_user.users : k => v.send_user_invitation if v.send_user_invitation != null }
}
output "users_user_invitation_id" {
  description = "Map of user_invitation_id values across all users, keyed the same as var.users except keys with no user_invitation_id are omitted"
  value       = { for k, v in datadog_user.users : k => v.user_invitation_id if v.user_invitation_id != null && length(v.user_invitation_id) > 0 }
}
output "users_verified" {
  description = "Map of verified values across all users, keyed the same as var.users except keys with no verified are omitted"
  value       = { for k, v in datadog_user.users : k => v.verified if v.verified != null }
}

