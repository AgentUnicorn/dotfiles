export DOTFILES="$HOME/.dotfiles/.config"

case "$(uname -s)" in
  Darwin)   DEVICE="macOS" ;;
  Linux)    DEVICE="Linux" ;;
  MINGW*|MSYS*|CYGWIN*|Windows_NT) DEVICE="Windows" ;;
  *)        DEVICE="Unknown" ;;
esac
export DEVICE

source "$DOTFILES/zshrc/modules/alias.sh"

# Load all plugins
# for file in "$DOTFILES/zshrc/plugins/"/*plugin.sh; do
#   [ -r "$file" ] && source "$file"
# done

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git aliases copypath zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

bindkey '^I' autosuggest-accept # tab 
bindkey '^[[Z' complete-word # shift + tab

source $ZSH/oh-my-zsh.sh


