alias vi=nvim
alias ll='ls -ltrhgo'

alias "rg -g '!*venv*' -g '!*.log' -g '!*.svg'"

alias k=kubectl

ksh() { kubectl exec -it "$1" -- /bin/bash }

alias gl='git log --graph --pretty="%Cred%%Creset - %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
alias gl2='git log --no-pager --graph --pretty="%Cred%%Creset - %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short -n 30'
