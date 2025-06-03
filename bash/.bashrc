#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

alias studio='GDK_BACKEND=wayland QT_QPA_PLATFORM=wayland _JAVA_AWT_WM_NONREPARENTING=1 _JAVA_OPTIONS="-Dsun.java2d.uiScale=1" /opt/android-studio/bin/studio.sh'

# PS0='[\u@\h \W]\$ '

# VARS
eval "$(starship init bash)"
eval "$(zoxide init bash)"

# EXPORTS
export STARSHIP_CONFIG=~/.config/starship.toml
export STARSHIP_CACHE=~/.config/starship/cache
export EDITOR="nvim"
export GDK_SCALE=1  # Adjust for HiDPI scaling (double the UI size)
export GDK_DPI_SCALE=0.5  # Adjust the DPI scale for better clarity

# ALIASES
alias cd="z"
alias ls="ls -lah --color=auto"
alias grep="grep --color=auto"

PATH="$PATH":"$HOME/.local/scripts/"

bind -x '"\C-f": tmux-sessionizer'

# TMUX on new terminal
if [ -z "$TMUX" ]; then
	tmux || tmux attach
fi

# FZF
export PATH="$HOME/.fzf/bin:$PATH"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH=$HOME/.local/bin:$PATH

[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash

export FZF_CTRL_T_COMMAND="fd . ~/techmania ~/personal --type f --hidden"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
