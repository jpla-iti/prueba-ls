#!/bin/bash
docker run --rm -it --name local-stamp --net=host -v /var/run/docker.sock:/var/run/docker.sock -v /srv/local-stamp:/data saasdk/local-stamp:latest