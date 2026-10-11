variable "users" {
  description = <<EOT
Map of users, attributes below
Required:
    - email
Optional:
    - disabled
    - name
    - roles
    - send_user_invitation
EOT

  type = map(object({
    email                = string
    disabled             = optional(bool)
    name                 = optional(string)
    roles                = optional(set(string))
    send_user_invitation = optional(bool)
  }))
}

