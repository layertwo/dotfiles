export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

export EDITOR='vim'
function weather() {
    curl https://wttr.in/"$@";
}
