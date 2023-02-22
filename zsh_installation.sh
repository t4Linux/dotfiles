#!/bin/env bash
# +-- created by: achmur -------------- time4Linux ------+ #
# |     __  __ __  __    _                           __  | #
# |    / /_/ // / / /   (_)___  __  ___  __   ____  / /  | #
# |   / __/ // /_/ /   / / __ \/ / / / |/_/  / __ \/ /   | #
# |  / /_/__  __/ /___/ / / / / /_/ />  < _ / /_/ / /    | #
# |  \__/  /_/ /_____/_/_/ /_/\__,_/_/|_/(_) .___/_/     | #
# |                                       /_/            | #
# |  Description: ZSH configuration          2023-02-21  | #
# +---------------------------------------- 2023-02-21 --+ #
MY_FILES="$HOME/t4Linux/dotfiles/zsh"

zsh_plug(){
  git -C $MY_FILES clone https://github.com/$1.git
}

if ! [[ -d $MY_FILES/fzf ]]; then
  a=prefix=\'~/.fzf\'
  b=prefix=
  c=$MY_FILES/fzf
  bash  zsh_plug "junegunn/fzf"
  sed -ie "s@$a@$b$c@g" $MY_FILES/fzf/install 
  bash  $MY_FILES/fzf/install --all --completion --no-fish --no-bash
  mv ~/.fzf.zsh $MY_FILES/settings/fzf.zsh
fi

if ! [[ -d $MY_FILES/fzf-tab ]]; then
  bash zsh_plug "Aloxaf/fzf-tab"
fi

if ! [[ -d $MY_FILES/zsh-autosuggestions ]]; then
  bash zsh_plug "zsh-users/zsh-autosuggestions"
fi

if ! [[ -d $MY_FILES/zsh-completions ]]; then
  bash zsh_plug "zsh-users/zsh-completions"
fi

if ! [[ -d $MY_FILES/zsh-syntax-highlighting ]]; then
  bash zsh_plug "zsh-users/zsh-syntax-highlighting"
fi

if ! [[ -d $MY_FILES/powerlevel10k ]]; then
  bash zsh_plug "romkatv/powerlevel10k"
fi

if ! [[ -d $MY_FILES/git-fuzzy ]]; then
  bash zsh_plug "bigH/git-fuzzy"
fi

if ! [[ -d $MY_FILES/zsh-history-substring-search ]]; then
  bash zsh_plug "zsh-users/zsh-history-substring-search"
fi

if [[ -f $HOME/.zshrc ]]; then
  rm ~/.zshrc && ln -s $MY_FILES/zshrc $HOME/.zshrc 
fi

if ! [[ -l ~/.config/zsh ]]; then
  ln -s $HOME/t4Linux/dotfiles/zsh/ $HOME/.config/zsh
fi
