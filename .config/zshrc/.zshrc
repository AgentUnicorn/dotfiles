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

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
lugins=(git lighthouse zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

