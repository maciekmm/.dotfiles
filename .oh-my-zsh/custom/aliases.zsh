# Pretty print JSON
alias pjson="ruby -r json -e 'jj JSON.parse gets'"

# Use user-readable units
alias df='df -h'
alias du='du -h'

# Monday as the first day of the week
alias cal='cal -m'

# Fix PACMAN
alias fixit='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu'

# Colored diff
alias diff='diff --color=auto'
alias termite='i3-sensible-terminal'

function workon() {
	source ./$1/bin/activate
}
function subs() {
	iconv -f CP1250 -t UTF-8 $1
}
