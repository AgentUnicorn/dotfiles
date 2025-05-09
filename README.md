# Dotfiles Setup Guide

## 🧬 Clone the Repository

```bash
mkdir ~/.dotfiles
git clone https://github.com/AgentUnicorn/dotfiles.git $HOME/.dotfiles
```

## 🔗 Create Symlinks

### For macOS and Linux (or WSL)
Run the `bootstrap.sh` script to create symlinks from `.dotfiles/.config` to your `$HOME/.config` directory:
```bash
chmod +x ~/.dotfiles/bootstrap.sh
~/.dotfiles/bootstrap.sh
```

### For PowerShell (Windows)
Use PowerShell to manually create a symlink to your config directory:
```bash
New-Item -ItemType SymbolicLink -Path "$HOME\.config" -Target "$HOME\.dotfiles\.config"
```

⚠️ Note: Symbolic links in Windows require either:

Developer Mode enabled, or

Running PowerShell as Administrator

Alternatively, you can use WSL for a more Linux-like dotfiles workflow.
