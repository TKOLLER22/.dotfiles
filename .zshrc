#ZSHRC

#ENV VARIABLES
export STARSHIP_CONFIG=~/.starship/starship.toml
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

#FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
