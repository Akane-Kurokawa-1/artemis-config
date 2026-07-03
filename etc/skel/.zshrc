# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias pm='sudo pacman'
alias ll='ls -lAh'
alias la='ls -A'
alias sctl=systemctl
alias jctl=journalctl
alias sctlu='systemctl --user'
alias jctlu='journalctl --user'
alias dmsg='sudo dmesg'
alias dmsgw='sudo dmesg -w'
alias v=nvim
alias n=nano
alias restart-plasma='sctl --user restart plasma-plasmashell.service'
