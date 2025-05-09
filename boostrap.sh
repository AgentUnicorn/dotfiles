#!/usr/bin/env bash

set -e

DOTFILES="$HOME/.dotfiles/.config"
CONFIG="$HOME/.config"

echo "Linking configs from $DOTFILES to $CONFIG"

for item in "$DOTFILES"/*; do
  name=$(basename "$item")
  target="$CONFIG/$name"

  # Backup if it exists and isn't already a symlink to the dotfiles
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "Backing up existing $target to $target.bak"
    mv "$target" "$target.bak"
  fi

  # Remove symlink if it exists
  if [ -L "$target" ]; then
    rm "$target"
  fi

  echo "Linking $name"
  ln -s "$item" "$target"
done

echo "✅ Done!"

