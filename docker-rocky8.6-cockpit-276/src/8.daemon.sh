#!/bin/bash

set -e

docker container prune -f

[ ! -d cockpit-data ] && mkdir cockpit-data

docker run \
	--privileged -d \
	-v `pwd`/cockpit-data:/data \
	-p 39090:9090 \
	--name rocky8.6-cockpit \
	rockylinux8.6-cockpit \
	/usr/sbin/init

echo "All done!"
