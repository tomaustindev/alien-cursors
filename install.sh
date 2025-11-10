#!/bin/bash
set -e # exits on non-zero return
shopt -s extglob # allows copy exclusions

install_to_dir () {
  # removes existing
  if [ -d "$1" ]; then
    echo "Overwriting old data..."
    sudo rm -rf "$1"
  fi

  # copies new (excluding git)
  sudo mkdir -p "$1"
  sudo cp -r ./!(install.sh|raw|.git|README.md|LICENSE|.gitignore) "$1"
}

# paths
LOC_PATH="$HOME/.local/share/icons/alien-cursors"
SYS_PATH="/usr/share/icons/alien-cursors"

# installation
echo "Installing locally to '$LOC_PATH'..."
install_to_dir "$LOC_PATH"

echo "Installing system-wide to '$SYS_PATH'..."
install_to_dir "$SYS_PATH"

