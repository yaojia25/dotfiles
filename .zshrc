#  _________  _   _ ____   ____ 
# |__  / ___|| | | |  _ \ / ___|
#   / /\___ \| |_| | |_) | |    
#  / /_ ___) |  _  |  _ <| |___ 
# /____|____/|_| |_|_| \_\\____|

#启动 zplug
source ~/.zplug/init.zsh

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

#########################################################
#                   zsh alias 列表                      #
#########################################################

# Example aliases
alias cls="clear"
alias nf="neofetch"
alias fuckgfw1="export http_proxy=socks5://127.0.0.1:7891 https_proxy=socks5://127.0.0.1:7891 && echo '- You are out with clash! -'"
alias fuckgfw2="export http_proxy=socks5://127.0.0.1:1089 https_proxy=socks5://127.0.0.1:1089 && echo '- You are out with v2ray! -'"
alias unfuckgfw="unset http_proxy https_proxy && echo '- Welcome inside. -'"
alias vim='nvim'
alias sudo vim='sudo nvim'
alias nr='nvim ~/.config/nvim/init.vim'
alias snr='source ~/.config/nvim/init.vim'
alias zr='nvim ~/.zshrc'
alias szr="source ~/.zshrc"
alias ch='cd ~'
alias clash='cd ~/.clash/ && ./clash -d .'
alias rg='ranger'
#WSL alias
alias cdc='cd /mnt/c/'
alias cdu='cd /c/Users/yaojia'
alias timwine='env WINEPREFIX="$HOME/.deepinwine/Deepin-TIM" deepin-wine'
alias qqwine='env WINEPREFIX="$HOME/.deepinwine/Deepin-QQ" deepin-wine'
alias qqmwine='env WINEPREFIX="$HOME/.deepinwine/Deepin-QQMusic" deepin-wine'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
#########################################################
#                   zplug 插件列表                      #
#########################################################

# powerlevel10k 主题
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma-continuum/fast-syntax-highlighting"

# oh-my-zsh 插件
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh


#########################################################
#                   zplug 插件设置                      #
#########################################################

# powerlevel10k 主题设置
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#########################################################
#                   zplug 插件加载                     #
#########################################################

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load



