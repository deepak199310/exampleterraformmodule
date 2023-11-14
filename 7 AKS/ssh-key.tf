## Calling ssh-key Module here...

module "ssh-key" {
  source    = "./modules/ssh-keys"
  file_name = "./private_ssh_key"
}


