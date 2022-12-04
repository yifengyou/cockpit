#!/bin/bash

set -e

docker container prune -f

[ ! -d cockpit-data ] && mkdir cockpit-data

docker run \
	--privileged -d \
	-v `pwd`/cockpit-data:/data \
	-p 19090:9090 \
	--name fedora36-cockpit \
	fedora36-cockpit \
	/usr/sbin/init

echo "All done!"
