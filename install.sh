#!/usr/bin/env bash

# Check if Homebrew is already installed
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  # This is the official Homebrew installation command from https://brew.sh/
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi


MINIFORGE_INSTALLER="Miniforge3-Darwin-arm64.sh"

if ! command -v mamba >/dev/null 2>&1 ; then
  echo "Downloading Miniforge installer..."
  curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/$MINIFORGE_INSTALLER"
  chmod +x "$MINIFORGE_INSTALLER"
  ./"$MINIFORGE_INSTALLER"
else
  echo "Mamba is already installed."
fi