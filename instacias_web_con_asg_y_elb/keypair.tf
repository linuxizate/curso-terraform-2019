resource "aws_key_pair" "keypair" {
  key_name   = "${var.project_name}-terraformkeypair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBTzhuL7sQpmDfxh+v3qDycAjjQLPs1V7eVQcsOZuhDevt/neLlH7wo6ZbRUHtsCoRTShsBDPY7u+ISISmJLJuf+Gr3DIYes7HVvFDoqKT755c7NtMekaOzLjTzeeTn+CMPsovnT6RhPZNJBJCMcXOYh39ZtdMvID1CWykhafe1QUa3kqLTmTVEWgAyiYBIbAsRDEkFHCRQBA+JPfOKDqcrcUXblm2Q1TwmoLZoOvxgVl36RLl7YweCrwQWZvRsdP7vfyybpCZqYQgDl3UWgglP9hapj6KiiF1mzGu+/R77cmKFfgQX2z59aYBpb/AYGOr/xjbhIt/etuefp+n/8xr zinetsis@linuxsis"
}


