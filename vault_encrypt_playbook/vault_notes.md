creating a new encrypted playbook
$ ansible-vault create myplay2.yaml

edit playbook
$ ansible-vault edit myplay2.yaml

change password
$ ansible-vault rekey myplay2.yaml

encrypt existing playbook
$ ansible-vault encrypt target_file.yaml

decrypt an encrypted playbook
$ ansible-vault decrypt target_file.yaml

