#!/bin/bash

set -xe

./4.destroy.sh
./0.build.sh
./8.daemon.sh
#docker exec -it rocky8.6-cockpit /bin/bash -c "cockpit-init"
./1.attach.sh

echo "All done!"
