# Ansible binary inside a container

## How to use ?

    $> docker run \
    --rm \
    -ti \
    -v /path/to/.ssh/id_rsa:/root/.ssh/id_rsa \
    -v /path/to/inventory:/app/inventory \
    -v /path/to/playbook.yml:/app/playbook.yml \
    shokohsc/ansible -i inventory playbook.yml
