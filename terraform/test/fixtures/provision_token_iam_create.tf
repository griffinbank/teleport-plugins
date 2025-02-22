resource "teleport_provision_token" "iam-token" {
  metadata = {
    name = "iam-token"
  }
  spec = {
    roles       = ["Bot"]
    bot_name    = "mybot"
    join_method = "iam"
    allow = [{
      aws_account = "123456789012"
    }]
  }
}
