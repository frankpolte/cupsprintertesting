#!/usr/bin/env bash

function _log(){
    args="$*"
    echo "${args}"
}

function launch_container(){
    name="$1"
    image="$2"
    rc=$(lxd launch images:"${image}" "${name}")
    if [ "$rc" -ne 0 ]; then
	_log "error creating the container: '" "$name" "' from the image: '" "$image" 
    fi
}

