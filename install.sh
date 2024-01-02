#!/usr/bin/env bash

# Check if Homebrew is already installed
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  # This is the official Homebrew installation command from https://brew.sh/
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi
