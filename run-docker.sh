#!/bin/sh

docker build --file Dockerfile --tag sitelen-mute .
docker run --rm -v "${PWD}/gallery:/gallery" -v "${PWD}/pictures:/pictures" sitelen-mute