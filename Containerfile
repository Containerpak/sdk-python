FROM ghcr.io/containerpak/base-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3 python3-dev python3-pip python3-venv && \
    apt-get clean && \
    find /var/lib/apt/lists -mindepth 1 -delete
