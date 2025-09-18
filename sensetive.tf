# local value display password for admin
locals {
  db_password = {
    admin = "password"
  }
}

output "db_password" {
  value = local.db_password
  sensitive   = true #in cli output value will censor but the password is not encrypt
}