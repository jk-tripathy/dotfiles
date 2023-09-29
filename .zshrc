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
# source ~/.pyenvs/base/bin/activate

source ~/.config/work.sh
source ~/.config/yeet.sh
source ~/.config/yoink.sh

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
alias w="work"

# To customize prompt, run `p10k configure` or edit ~/.config//.p10k.zsh.
[[ ! -f ~/.config//.p10k.zsh ]] || source ~/.config/.p10k.zsh
