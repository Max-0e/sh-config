if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
export TERM=xterm-256color

alias vim="nvim"
export EDITOR="nvim"
[[ -n "$TMUX" ]] && PROMPT_COMMAND='echo -n -e "\e]2;${PWD/${HOME}/~}\e\\"'  

eval "$(zoxide init --cmd cd zsh)"

source ~/powerlevel10k/powerlevel10k.zsh-theme

export TODO_DIR="$HOME/Documents/todo"
export TODO_FILE="$TODO_DIR/todo.txt"
export DONE_FILE="$TODO_DIR/done.txt"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
