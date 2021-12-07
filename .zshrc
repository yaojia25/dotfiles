#  _________  _   _ ____   ____ 
# |__  / ___|| | | |  _ \ / ___|
#   / /\___ \| |_| | |_) | |    
#  / /_ ___) |  _  |  _ <| |___ 
# /____|____/|_| |_|_| \_\\____|


#########################################################
#                   zplug 插件列表                      #
#########################################################

#历史记录
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

#########################################################
#                   zsh 环境变量                        #
#########################################################

#环境配置
export TERM=xterm-256color
export EDITOR=nvim
export DIFFPROG=nvim
export GPG_TTY=$(tty)
#########################################################
#                   zsh alias 列表                      #
#########################################################

# Example aliases
alias cls="clear"
alias nf="neofetch"
alias ch='cd ~'
alias clash='cd ~/.clash/ && ./clash -d .'
alias rg='ranger'
alias lg='lazygit'
#WSL alias
alias cdc='cd /mnt/c/'
alias cdu='cd /c/Users/yaojia'
alias timwine='env WINEPREFIX="$HOME/.deepinwine/Deepin-TIM" deepin-wine'
alias qqwine='env WINEPREFIX="$HOME/.deepinwine/Deepin-QQ" deepin-wine'
alias qqmwine='env WINEPREFIX="$HOME/.deepinwine/Deepin-QQMusic" deepin-wine'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'




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
### End of Zinit's installer chunk

#########################################################
#                   zinit 插件列表                      #
#########################################################

zinit wait="1" lucid for \
    OMZL::git.zsh \
    OMZP::sudo/sudo.plugin.zsh \
    OMZP::git/git.plugin.zsh
# 提示
zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
# 高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma-continuum/fast-syntax-highlighting
# 自动补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions
# 主题
zinit ice depth=1
zinit light romkatv/powerlevel10k
# powerlevel10k 主题设置
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
