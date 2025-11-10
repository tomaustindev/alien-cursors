#!/bin/bash
set -e # exits on non-zero return
shopt -s extglob # allows copy exclusions

# $1 = input path
# $2 = output path
install_to_dir () {
  # removes existing
  if [ -d $2 ]; then
    echo "Overwriting old data..."
    sudo rm -rf $2
  fi

  # copies
  sudo mkdir -p $(dirname $2)
  sudo cp -r $1 $2
}

# paths
LOC_PATH="$HOME/.local/share/icons"
SYS_PATH="/usr/share/icons"

# installation
echo "Installing themes locally to '$LOC_PATH'..."
install_to_dir "./light" "$LOC_PATH/alien-cursors"
install_to_dir "./dark" "$LOC_PATH/alien-cursors-dark"

echo "Installing themes system-wide to '$SYS_PATH'..."
install_to_dir "./light" "$SYS_PATH/alien-cursors"
install_to_dir "./dark" "$SYS_PATH/alien-cursors-dark"

