#!/bin/bash

docker run --rm -v $(pwd):/usr/src/app --entrypoint=npm ember-cli install
docker run --rm -v $(pwd):/usr/src/app --entrypoint=bower ember-cli install --allow-root
docker run --rm -v $(pwd):/usr/src/app ember-cli build --production
docker build -t trivia-editor-app .
