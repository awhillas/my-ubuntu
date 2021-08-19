alias h="history"

# git
alias gti='git'
alias gs='git status'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias push='git push'
alias pull='git pull --rebase'
alias commit='git commit -am'
alias amend='git commit --amend --no-edit'
alias gd='git diff'
alias add='git add . && gs'

alias dps='docker ps --format "table {{.ID}}\t{{.Status}}\t{{ printf \"%.35s\" .Names}}\t{{printf \"%.35s\" .Image}}\t{{printf \"%.35s\" .Ports}}"'

alias t="exa --tree"
alias tt="exa --tree -long"
alias bat="batcat"