export GPG_TTY=$(tty) 

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export CHROME_EXECUTABLE='google-chrome-stable'
export TOKENIZERS_PARALLELISM=false

export ZSH="$HOME/.oh-my-zsh"
path+=("$HOME/flutter/bin/")
export path

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.pyenvs/base/bin/activate
source ~/work.sh

env () {
    if [[ $1 == "-l" ]]
    then
        ls ~/.pyenvs/
    else
        source ~/.pyenvs/$1/bin/activate
    fi
}

# aliases
alias nv="nvim"

alias cisco="/opt/cisco/anyconnect/bin/vpn"
alias vc="cisco -s < ~/.cisco_creds connect sslvpn.uni-potsdam.de"
alias vd="cisco disconnect"
alias vs="cisco status"

alias yeet="~/yeet.sh"
alias yoink="~/yoink.sh"


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
