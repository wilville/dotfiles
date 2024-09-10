# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]# confirmations, etc.) must go above this block; everything else may go below.


neofetch
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/void/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Created by `pipx` on 2024-03-18 14:40:17
export PATH="$PATH:/home/void/.local/bin"
export PATH="$PATH:/home/void/local/bin"
export PATH="$PATH:/root/.local/bin"
export PATH="$PATH:/home/void/go/bin/"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/home/void/.cargo/bin/"
export PATH="$PATH:/home/void/.spicetify"
export PATH="$PATH:/etc/sv/"
source ~/powerlevel10k/powerlevel10k.zsh-theme

export EDITOR=nvim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
