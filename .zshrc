export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    aws
    git
    docker-compose
    docker
    gh
    gitignore
    fluxcd
    kubectl
    poetry-env
    poetry
    tmux
)

source $ZSH/oh-my-zsh.sh
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

export EDITOR='nvim'
function weather() {
    curl https://wttr.in/"$@";
}
alias vim="nvim"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
