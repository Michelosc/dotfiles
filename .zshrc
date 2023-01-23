# Created by newuser for 5.9

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source /home/michel/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias cat='bat'

alias grep='rg'

alias ls='exa --icons'

alias ll='ls -alg'

alias du='dust'

# alias find='fd'

alias ps='procs'

# alias sed='sd'

alias top='ytop'



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
