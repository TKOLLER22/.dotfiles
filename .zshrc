#ZSHRC

#STARSHIP VARIABLES
export STARSHIP_CONFIG=~/.starship.toml
export STARSHIP_CACHE=~/.starship/cache

#STARSHIP
eval "$(starship init zsh)"

#ZOXIDE
eval "$(zoxide init zsh)"
alias cd="z"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#TMUX-SESSIONIZER
PATH="$PATH":"$HOME/.local/scripts/"

bindkey -s ^f "tmux-sessionizer\n"

if [[ -z "$TMUX" ]]; then
    tmux attach || tmux
fi

#FZF
export PATH="$HOME/.fzf/bin:$PATH"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$HOME/.local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
