alias bashalias='code ~/.bash_profile'
alias bashcolor='code ~/.minttyrc'
alias bashconfig='code /etc/profile.d/git-prompt.sh'
alias gitconfig='code ~/.gitconfig'
alias bashsource='source ~/.bash_profile'
alias bashbaklocal='cp ~/.bash_profile ~/.minttyrc ~/.gitconfig /etc/profile.d/git-prompt.sh ~/OneDrive/backups/bash \
                    && cp ~/.tmux.conf ~/OneDrive/backups/bash/tmux'
alias bashbakremote="cd ~/OneDrive/backups/bash \
                    && git add . && git commit -m 'auto deploy' && git push \
                    && ga && gc 'auto deploy' && gp master \
                    && cd -"

alias ,='cd -'
alias .='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias e='exit'
alias cls='clear'

alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias ga='git add .'
alias gitauto='git add . && git commit -m "auto deploy" && git push'
alias test='echo test'

alias sshv='ssh root@45.32.250.216'
alias ssha='ssh root@101.132.101.124'
alias vmssh='ssh root@192.168.43.43'
alias vmls='powershell Get-VM'
alias vmstop='powershell Stop-VM -Name centos7'
alias vmstart='powershell Start-VM -Name centos7'
alias vmsave='powershell Save-VM -Name centos7'
alias vmpush='scp -r ~/jianguo/share/ root@192.168.43.43:/root/'
alias vmpull='scp -r root@192.168.43.43:/root/share ~/jianguo'

alias power='powercfg -list'
alias powerh='powercfg -setactive e27982c9-f9e0-4e53-ae39-336e9bc55e57'
alias powerb='powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e'
alias powers='powercfg -setactive e7d43c03-a7d6-411f-b922-35ee9517136a'

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
alias tk='tmux kill-session -t'
alias tl='tmux ls'
alias th="echo 'rename session: prefix $'"

alias mwsl='winpty wsl'

alias npmproxy='npm config set proxy http://127.0.0.1:1080'
alias npmdeleteproxy='npm config delete proxy'
alias npmdeleteregistry='npm config delete reigstry'
alias yarnproxy='yarn config set proxy http://127.0.0.1:1080 \
                && yarn config set https-proxy http://127.0.0.1:1080'
alias yarndeleteproxy='yarn config delete proxy \
                && yarn config delete https-proxy'
alias yarndeleteregistry='yarn config delete reigstry'
