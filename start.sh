#!/bin/sh

echo "Setting up your Mac..."

# Install all dependencies
source ./dependencies.sh

# Set macOS preferences - we will run this last because this will reload the shell
source ./macos.bash
