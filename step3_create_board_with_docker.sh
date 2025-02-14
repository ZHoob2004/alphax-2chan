#!/bin/bash

if [ ! -f hellen-one/git_scripts ]; then
    echo "No submodules?"
    git submodule update --init --recursive
fi

# See step2_copy_with_docker.sh for explanation of the following command

docker run --rm -t --user $(id -u):$(id -g) --entrypoint bash -v "$(pwd)":/${PWD##*/} hellen-one ./bin/create_board_with_prefix.sh "alphax_" "/${PWD##*/}" "2ch" "c" "bom_replace_alphax-2ch-c.csv " "0,4"

