if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="/home/dcorral/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	fzf
    zsh-syntax-highlighting
    colored-man-pages
    docker
)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias cw="cd $HOME/workspace/ain && vim"
alias audiofix="$HOME/.scripts/init_volumeicon.sh > /dev/null 2>&1 &"
alias python3="python"
alias open="xdg-open"
alias workweb="$HOME/dct_config/tmuxsimple.sh $HOME/workspace/web/paula-react-redux"
alias ls="exa --icons"


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/nvm/init-nvm.sh
