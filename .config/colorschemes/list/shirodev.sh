#!/usr/bin/env bash

# Filename: ~/github/dotfiles-latest/colorscheme/list/shirodev-colors.sh
# ~/github/dotfiles-latest/colorscheme/list/shirodev-colors.sh

# These files have to be executable

# Lighter markdown headings
# 4 colors to the right for these ligher headings
# https://www.color-hex.com/color/987afb
#
# Given that color A (#987afb) becomes color B (#5b4996) when darkened 4 steps
# to the right, apply the same darkening ratio/pattern to calculate what color
# C (#37f499) becomes when darkened 4 steps to the right.
#
# Markdown heading 1 - color04
shirodev_color18=#2d244b
# Markdown heading 2 - color02
shirodev_color19=#10492d
# Markdown heading 3 - color03
shirodev_color20=#013e4a
# Markdown heading 4 - color01
shirodev_color21=#4b314c
# Markdown heading 5 - color05
shirodev_color22=#1e2b00
# Markdown heading 6 - color08
shirodev_color23=#2d1c08
# Markdown heading foreground
# usually set to color10 which is the terminal background
shirodev_color26=#0D1116

shirodev_color01=#fca6ff
shirodev_color02=#37f499
shirodev_color03=#04d1f9
shirodev_color04=#987afb
shirodev_color05=#9ad900
shirodev_color06=#05ff23
shirodev_color08=#e58f2a

# Colors to the right from https://www.colorhexa.com
# Terminal and neovim background
shirodev_color10=#0D1116
# Lualine across, 1 color to the right of background
shirodev_color17=#141b22
# Markdown codeblock, 2 to the right of background
shirodev_color07=#141b22
# Background of inactive tmux pane, 3 to the right of background
shirodev_color25=#232e3b
# line across cursor, 5 to the right of background
shirodev_color13=#232e3b
# Tmux inactive windows, 7 colors to the right of background
shirodev_color15=#013e4a

# Comments
shirodev_color09=#b7bfce
# Underline spellbad
shirodev_color11=#f16c75
# Underline spellcap
shirodev_color12=#f1fc79
# Cursor and tmux windows text
shirodev_color14=#ffffff
# Selected text
shirodev_color16=#e9b3fd
# Cursor color
shirodev_color24=#f94dff

# Wallpaper for this colorscheme
wallpaper="$HOME/Library/Mobile Documents/com~apple~CloudDocs/Images/wallpapers/official/skyrim-dragon-4.webp"

