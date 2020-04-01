#!/bin/bash

docker run \
  --interactive --tty \
  --cap-add=SYS_ADMIN \
  --volume node_modules:/codebase/node_modules \
  --volume "$(pwd)":/codebase \
  --env-file docker/puppeteer/env_vars \
  --net host \
  --name puppeteer-cmd \
  --rm \
  puppeteer:latest \
  bash
