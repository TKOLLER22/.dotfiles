#ZSHRC

#ENV VARIABLES
#export STARSHIP_CONFIG=~/.starship/starship.toml
#export STARSHIP_CACHE=~/.starship/cache

#STARSHIP
eval "$(starship init zsh)"

#ZOXIDE
eval "$(zoxide init zsh)"
alias cd="z"
