#!/bin/bash
# used this to keep the docker container running for debugging
#set -e
ls -al /bin/*
ls -al /usr/lib/postgresql/12/bin/*
/usr/lib/postgresql/12/bin/postgres --version
ls -al /usr/bin/*


while true; do sleep 2; echo "sleeping" ; done
