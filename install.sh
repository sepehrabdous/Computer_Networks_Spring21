#!/bin/bash

# Install script for Mininet Vagrant VM
# Adapted from https://github.com/kaichengyan/mininet-vagrant

MININET_VERSION="2.3.0d6"
POX_VERSION=angler

sudo apt-get update
sudo apt-get install -y build-essential
