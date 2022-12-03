#!/bin/bash

set -e

#docker container prune -f
docker container rm --force rocky8.6-cockpit

#[ -d cockpit-data ] && rm -rf cockpit-data

echo "All done!"
