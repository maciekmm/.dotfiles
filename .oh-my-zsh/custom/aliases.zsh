# Pretty print JSON
alias pjson="ruby -r json -e 'jj JSON.parse gets'"

# Use user-readable units
alias df='df -h'
alias du='du -h'

# Fix PACMAN
alias fixit='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu'
