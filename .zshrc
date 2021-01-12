#   _________  __   ___  __ _____   _  _____  ____
#  / ___/ __ \/ /  / _ \/ // / _ | / |/ / _ \/ __/
# / /__/ /_/ / /__/ // / _  / __ |/    / // /\ \  
# \___/\____/____/____/_//_/_/ |_/_/|_/____/___/ 
# coldhands.xyz
# 2021
 
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh/

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k/powerlevel10k"
  autoload -U promptinit; promptinit
  prompt spaceship

# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt GLOB_DOTS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.scripts" ] ;
 then PATH="$HOME/.scripts:$PATH"
fi

## ALIASES ##

# Cd but no cd
alias ..='cd ..'
alias ...='cd ../..'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Colorize the grep command output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Pacman
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'

# Yay
alias upall='yay -Syu --noconfirm'

# Add new fonts
alias fonts='sudo fc-cache -fv'

# Switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

# Get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# Get error messages from journalctl
alias jctl='journalctl -p 3 -xb'

# Merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# Configs dmenu script
alias configs='configs.sh'

[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal

# Neofetch
#neofetch --w3m /home/cold/Pictures/cold.png
neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Make pywal persist
(cat ~/.cache/wal/sequences &)

# Git bare 
alias config="/usr/bin/git --git-dir=/home/cold/.dotfiles/ --work-tree=/home/cold"

## END OF LINE ##