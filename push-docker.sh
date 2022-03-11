#!/bin/sh

docker build --file Dockerfile --tag fethbita/sitelen-mute-fork .
docker push fethbita/sitelen-mute-fork:latest
