export GPG_TTY=$(tty)

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export XDG_RUNTIME_DIR=/run/user/$(id -u)
export CHROME_EXECUTABLE='google-chrome'
export TOKENIZERS_PARALLELISM=false
export DISPLAY=:0
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export NVM_DIR="$HOME/.nvm"
export ANDROID_HOME="$HOME/android-sdk/"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

path=("$HOME/chromedriver-linux64/" $path)
# Android sdk 
path=("$ANDROID_HOME/tools" $path)
path=("$ANDROID_HOME/tools/bin" $path)
path=("$ANDROID_HOME/cmdline-tools/" $path)
path=("$ANDROID_HOME/cmdline-tools/latest/bin" $path)
path=("$ANDROID_HOME/platform-tools" $path)
path=("$ANDROID_HOME/emulator/" $path)


# flutter
path=("$HOME/flutter/bin" $path)
path=("$HOME/.local/bin" $path)
export path

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# source ~/.pyenvs/base/bin/activate

source ~/.config/scripts/GHPbuild.sh
source ~/.config/scripts/work.sh

# aliases
alias nv="nvim"
alias w="work"
alias e="explorer.exe ."
alias fd="sudo rm -r /tmp/.X11-unix && ln -s /mnt/wslg/.X11-unix /tmp/.X11-unix"

# To customize prompt, run `p10k configure` or edit ~/.config//.p10k.zsh.
[[ ! -f ~/.config//.p10k.zsh ]] || source ~/.config/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
