#!/bin/bash

## Create a user and then run the given command

if [ "" = "${UID}" ]; then
  echo "Please specify the UID environment variable"
  exit 1
fi

if [ "" = "${GID}" ]; then
  echo "Please specify the GID environment variable"
  exit 1
fi

groupadd --gid "${GID}" dev
useradd --create-home --home-dir /home/dev --uid "${UID}" --gid "${GID}" dev

sudo -u "#${UID}" -g "#${GID}" "$@"
