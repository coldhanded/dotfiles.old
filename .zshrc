[ -f $HOME/.config/zsh/.zsh ] && source $HOME/.config/zsh/exports.zsh
[ -f $HOME/.config/zsh/prompt.zsh ] && source $HOME/.config/zsh/prompt.zsh
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh

PATH="$HOME/.bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.scripts:$PATH"

# Make pywal persist
(cat ~/.cache/wal/sequences &)

# Kitty completion
autoload -Uz compinit 
compinit
kitty + complete setup zsh | source /dev/stdin

# Syntax Highlighting (*keep last*)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh