# +-- created by: achmur -------------- time4Linux ------+ #
# |     __  __ __  __    _                           __  | #
# |    / /_/ // / / /   (_)___  __  ___  __   ____  / /  | #
# |   / __/ // /_/ /   / / __ \/ / / / |/_/  / __ \/ /   | #
# |  / /_/__  __/ /___/ / / / / /_/ />  < _ / /_/ / /    | #
# |  \__/  /_/ /_____/_/_/ /_/\__,_/_/|_/(_) .___/_/     | #
# |                                       /_/            | #
# |  Description: ZSH configuration          2023-02-17  | #
# +---------------------------------------- 2023-02-17 --+ #
setopt autocd notify
unsetopt beep
bindkey -v
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
# Auto complete with case insensitivity
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
