#!/bin/bash

set -e

#docker container prune -f
docker container rm --force fedora36-cockpit

#[ -d cockpit-data ] && rm -rf cockpit-data

echo "All done!"
