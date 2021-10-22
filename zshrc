zmodload zsh/zprof
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# default editor
export EDITOR=vim
export VISUAL=vim

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias F='cd /media/shaarif/F'
alias E='cd /media/shaarif/E'
alias 'mount_E'='udisksctl mount -b /dev/sda2'
alias 'mount_F'='udisksctl mount -b /dev/sda4'
alias 'open'='xdg-open'
alias 'xclip'='xclip -selection clipboard'
alias 'semester06'="cd /media/shaarif/E/semester06"
alias tree="tree -L 1"
unalias rm

cs(){
if [ -z "$@" ]; then
    ls
else
    cd "$@" && ls
fi
}

mcd(){
    mkdir $1
    cd $1

}

#for react native
#export ANDROID_HOME=$HOME/Android/Sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools

#for python3
alias python3="python3.7"

#for colored man pages
export PAGER="most"

#autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey "^R" history-incremental-search-backward
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export NPM_TOKEN=b7adbbbd-184e-4f20-bb5b-b786fee5075a
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm 

