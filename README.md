# Ansible binary inside a container

## How to use ?

    $> docker run \
    --rm \
    -ti \
    -v /path/to/.ssh/id_rsa:/root/.ssh/id_rsa:ro \
    -v $(pwd):/app \
    -e SSH_KEY_PASSWORD=$SSH_KEY_PASSWORD \
    -w=/app \
    shokohsc/ansible -i inventory playbook.yml
