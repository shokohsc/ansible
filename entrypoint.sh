#!/bin/bash

eval "$(ssh-agent -s)"
echo $SSH_KEY_PASSWORD | ssh-add ~/.ssh/id_rsa
/usr/bin/ansible-playbook $@
