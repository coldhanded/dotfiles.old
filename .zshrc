## Exports and plugins ##

 # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh 
export ZSH=/usr/share/oh-my-zsh/

# Path to dump
export ZDOTDIR=/home/cold/.config/zsh/

# History file
HISTFILE=/home/cold/.config/zsh/.zsh_history

# Load spaceship prompt
  autoload -U promptinit; promptinit
  prompt spaceship

# Which plugins would you like to load?
plugins=(
	git
)

source $ZSH/oh-my-zsh.sh


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

# Paru
alias upall='paru'

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

# Git bare 
alias config="/usr/bin/git --git-dir=/home/cold/.dotfiles/ --work-tree=/home/cold"

# Coldbot ssh
alias coldbot="ssh 192.168.2.51 -l coldbot"

# Images in kitty
alias icat="kitty +kitten icat"

# Make pywal persist
(cat ~/.cache/wal/sequences &)

# Kitty completion
autoload -Uz compinit 
compinit
kitty + complete setup zsh | source /dev/stdin

# Neofetch
neofetch --ascii /home/cold/.config/neofetch/kitty

# Syntax Highlighting (*keep last*)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh