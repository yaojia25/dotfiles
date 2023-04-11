#  ________  _   _ ____   ____
# |__  / ___|| | | |  _ \ / ___|
#   / /\___ \| |_| | |_) | |
#  / /_ ___) |  _  |  _ <| |___
# /____|____/|_| |_|_| \_\\____|


#########################################################
#                       zsh 基础设置                     #
#########################################################

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt AUTO_PUSHD
#########################################################
#                   zsh 环境变量                        #
#########################################################
export TERM=xterm-256color
#########################################################
#                   zsh alias 列表                      #
#########################################################
alias cls="clear"
alias nf="neofetch"
alias rg='ranger'
alias lg='lazygit'
alias lsl='ls -la --color=auto'
#########################################################
#                       zinit                           #
#########################################################
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Load pure theme
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice wait lucid
zinit load zdharma-continuum/history-search-multi-word
