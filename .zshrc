# case insensitive autocomplete
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 
zstyle :compinstall filename '/Users/savery/.zshrc'
autoload -Uz compinit && compinit

# custom prompt with git branch and exit code
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "(%b) "
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

setopt prompt_subst
PROMPT="%* %n %~ \$vcs_info_msg_0_%(?..[%?])%# "


# Aliases
alias gs='git status'
alias tf='terraform'

# Node
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# python
eval "$(pyenv init --path)" && eval "$(pyenv init -)"
# python poetry
export PATH="$HOME/.poetry/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"
