#!/usr/bin/env sh
#shellcheck shell=sh

set -xe

HOME=/config
export HOME

cd /config

# Set up symlinks.
# We need to launch ROMVault from /config as this is where it will write its config.
ln -fs /opt/romvault/ROMVault3.exe /config/ROMVault3.exe || true
ln -fs /opt/romvault/RVCmd.exe /config/RVCmd.exe || true
ln -fs /opt/romvault/chdman.exe /config/chdman.exe || true

mono /config/ROMVault3.exe
