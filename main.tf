resource "datadog_user" "users" {
  for_each = var.users

  email                = each.value.email
  disabled             = each.value.disabled
  name                 = each.value.name
  roles                = each.value.roles
  send_user_invitation = each.value.send_user_invitation
}

