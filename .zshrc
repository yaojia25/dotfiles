#  ________  _   _ ____   ____ 
# |__  / ___|| | | |  _ \ / ___|
#   / /\___ \| |_| | |_) | |    
#  / /_ ___) |  _  |  _ <| |___ 
# /____|____/|_| |_|_| \_\\____|


#########################################################
#                       zsh 基础设置                     #
#########################################################

#历史记录
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt AUTO_PUSHD

#########################################################
#                   zsh 环境变量                        #
#########################################################

#环境配置
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche
export TERM=xterm-256color
export EDITOR=nvim
export DIFFPROG=nvim
export GPG_TTY=$(tty)
export STARSHIP_CONFIG=~/.config/starship/starship.toml
#########################################################
#                   zsh alias 列表                      #
#########################################################

# Example aliases
alias cls="clear"
alias nf="neofetch"
alias rg='ranger'
alias lg='lazygit'
alias lsl='ls -la --color=auto'
alias sudo='sudo -E'

### Added by Zinit's installer
if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
  print -P "%F{33}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
  command mkdir -p "$HOME/.zi" && command chmod g-rwX "$HOME/.zi"
  command git clone -q --depth=1 --branch "main" https://github.com/z-shell/zi "$HOME/.zi/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
    print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi
source "$HOME/.zi/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
### End of Zinit's installer chunk

#########################################################
#                       zi 插件列表                      #
#########################################################

zicompinit # <- https://z-shell.pages.dev/docs/gallery/collection#minimal
# 提示
zi ice wait lucid atload'_zsh_autosuggest_start'
zi light zsh-users/zsh-autosuggestions
# 高亮
zi ice wait lucid atinit='zpcompinit'
zi light zdharma/fast-syntax-highlighting
# 自动补全
zi light zsh-users/zsh-completions
# 目录跳转 z/j
zi light agkozak/zsh-z
# zi snippet OMZP::autojump
# 主题
zi ice pick"async.zsh" src"pure.zsh"
zi light sindresorhus/pure

autoload -Uz compinit; compinit
zinit cdreplay -q

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit
