export GPG_TTY=$(tty)

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export CHROME_EXECUTABLE='google-chrome-beta'
export TOKENIZERS_PARALLELISM=false

export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim

path+=("/opt/flutter/bin")
export path

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# source ~/.pyenvs/base/bin/activate

source ~/.config/scripts/work.sh
source ~/.config/scripts/yeet.sh
source ~/.config/scripts/yoink.sh
source ~/.config/scripts/GHPbuild.sh

# aliases
alias nv="nvim"
alias w="work"

# To customize prompt, run `p10k configure` or edit ~/.config//.p10k.zsh.
[[ ! -f ~/.config//.p10k.zsh ]] || source ~/.config/.p10k.zsh
