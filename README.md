# Ansible binary inside a container

## How to use ?

    $> docker run \
    --rm \
    -ti \
    -v /path/to/.ssh:/root/.ssh \
    -v /path/to/inventory:/app/inventory \
    -v /path/to/playbook.yaml:/app/playbook.yaml \
    shokohsc/ansible [ANSIBLE-PLAYBOOK OPTIONS HERE]
