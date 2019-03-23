alias bashalias='code ~/.bash_profile'
alias bashcolor='code ~/.minttyrc'
alias bashconfig='code /etc/profile.d/git-prompt.sh'
alias gitconfig='code ~/.gitconfig'

alias ,='cd -'
alias .='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias e='exit'
alias cls='clear'

alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gs='git status'
alias gl='git pull'
alias gb='git branch'
alias gch='git checkout'
alias gm='git merge'


alias power='powercfg -list'
alias sysoff='shutdown -s -t 0'
alias sysre='shutdown -r -t 0'

alias host='code /c/Windows/System32/drivers/etc/hosts'
alias ep='start . && exit'
alias c='code . && exit'

alias utf8='sed -i 's/GBK/UTF-8/' ~/.minttyrc'
alias gbk='sed -i 's/UTF-8/GBK/' ~/.minttyrc'

alias tree1='tree -L 1'
alias tree2='tree -L 2'

alias tn='tmux new -s m'
alias ta='tmux a'

alias mwsl='winpty wsl'
alias mysql='winpty mysql -uroot -p'
