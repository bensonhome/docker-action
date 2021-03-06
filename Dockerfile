FROM python:3.7.12-slim

ARG EXTRA_TOOLS="curl wget python3-dev git git-lfs vim"

RUN apt-get update \
    && apt-get install -y --no-install-recommends $EXTRA_TOOLS

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]