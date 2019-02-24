#!/bin/sh

test -d logs || mkdir logs

# timezone for log timestamps
echo "boot.sh: Running with TZ = \"$TZ\""

# run webapp
FLASK_APP=app FLASK_DEBUG=1 python -m flask run
