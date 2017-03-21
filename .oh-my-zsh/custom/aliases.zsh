# Pretty print JSON
alias pjson="ruby -r json -e 'jj JSON.parse gets'"

# Use user-readable units
alias df='df -h'
alias du='du -h'

# Monday as the first day of the week
alias cal='cal -m'

# Fix PACMAN
alias fixit='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu'
