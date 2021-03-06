# Aliases
#########

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Development
alias gpp="g++"
alias gs="git status"
alias tiga="tig --all"
alias ungit="rm -rf ./.git/"

# Better Flags
alias lsa="ls -A"
alias tra="tree -a -F -I '.git|.hg|.DS_Store|.sass-cache'"
alias tree="tree --dirsfirst -F"
alias duh="du -hc"
alias hexdump="hexdump -C"
alias crontab="crontab -i"

# Utilities
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias servedir="sudo python -m SimpleHTTPServer"
alias ccat="pygmentize -O style=monokai -f console256 -g"
alias linesubt="grep -Fxvf"

