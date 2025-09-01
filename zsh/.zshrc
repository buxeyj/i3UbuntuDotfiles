# ----- JACK'S MINIMAL ZSH -----

HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

# Plugins (assumes you cloned them under ~/.zsh/plugins)
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# FZF keybindings + completion (Debian/Ubuntu paths)
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "bat --style=numbers --color=always {} | head -200"'

# Aliases
alias ll='ls -lah --group-directories-first --color=auto'
alias please='sudo $(fc -ln -1)'

# Prompt
eval "$(starship init zsh)"

