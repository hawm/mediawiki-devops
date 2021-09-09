#!/bin/bash

# A shortcut for simplify the docker-compose workflow
# Usage:
# `./run.sh dev up -d` instead of 
# ```
#   docker-compose \
#   -f docker-coompose \
#   -f docker-compose.dev.yml \
#   --env-file .dev.env \
#   up -d
# ```

set -e

check_file_exist(){
    if [[ ! -f $1 ]]; then
        echo "file not found: $1"
        exit 1
    fi
}

env_compose_file="docker-compose.${1}.yml"
env_file=".env.${1}"

check_file_exist "$env_compose_file"
check_file_exist "$env_file"

docker-compose \
    -f docker-compose.yml \
    -f "$env_compose_file" \
    --env-file "$env_file" \
    "${@:2}"