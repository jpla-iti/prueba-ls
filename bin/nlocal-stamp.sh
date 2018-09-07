docker run --rm -it -e LSVERSION=latest -v /:/jost -v /var/run/docker.sock:/var/run/docker.sock --entrypoint /eslap/component/server/scripts/_local-stamp-start.sh saasdk/local-stamp:latest

