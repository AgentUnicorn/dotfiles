#!/usr/bin/env bash

set -e

error() {
	echo "Error: $1" >&2
	exit 1
}

if [ -z "$1" ]; then
  error "No colorscheme profile provided"
fi

colorscheme_profile="$1"

colorscheme_file="$HOME/.dotfiles/.config/colorschemes/list/$colorscheme_profile"
active_file="$HOME/.dotfiles/.config/colorschemes/active/active-colorscheme.sh"

# Check if the colorscheme file exists
if [ ! -f "$colorscheme_file" ]; then
  error "Colorscheme file '$colorscheme_file' does not exist."
fi

# If active-colorscheme.sh doesn't exist, create it
if [ ! -f "$active_file" ]; then
  echo "Active colorscheme file not found. Creating '$active_file'."
  cp "$colorscheme_file" "$active_file"
  UPDATED=true
else
  # Compare the new colorscheme with the active one
  if ! diff -q "$active_file" "$colorscheme_file" >/dev/null; then
    UPDATED=true
  else
    UPDATED=false
  fi
fi

# If there's an update, replace the active colorscheme and perform necessary actions
if [ "$UPDATED" = true ]; then
  echo "Updating active colorscheme to '$colorscheme_profile'."

  # Replace the contents of active-colorscheme.sh
  cp "$colorscheme_file" "$active_file"

  # Also replace the themes of nvim and wezterm
  cp "$colorscheme_file" "$HOME/AppData/Local/nvim/lua/config/active-colorscheme.sh"

  # Source the active colorscheme to load variables
  source "$active_file"
fi
