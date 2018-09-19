#!/bin/bash
CONFIG=$1
VERSION=latest
CONFIG_LINK=/tmp/.local-stamp.json
[ -f $CONFIG_LINK ] && rm $CONFIG_LINK
[ -f "$CONFIG" ] && shift && cp $CONFIG $CONFIG_LINK
docker run --rm -it -e LSVERSION=$VERSION -v /:/jost -v /var/run/docker.sock:/var/run/docker.sock --entrypoint /eslap/component/server/scripts/_local-stamp-start.sh saasdk/local-stamp:$VERSION $@

