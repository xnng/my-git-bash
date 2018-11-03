alias bashalias='code ~/.bash_profile'
alias bashcolor='code ~/.minttyrc'
alias bashconfig='code /etc/profile.d/git-prompt.sh'
alias bashsync='cp ~/.bash_profile ~/.minttyrc ~/.gitconfig /etc/profile.d/git-prompt.sh ~/home/projects/finished/terminal-sync/ \
                && cd ~/home/projects/finished/terminal-sync \
                && git add . && git commit -m update && git push && cd -'

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
alias gb='git branch'
alias gm='git merge'

alias sshv='ssh root@45.32.250.216'
alias ssha='ssh root@101.132.101.124'
# alias vmssh='ssh root@vm.com'
# alias vmls='powershell Get-VM'
# alias vmstop='powershell Stop-VM -Name CentOS7'
# alias vmstart='powershell Start-VM -Name CentOS7'
# alias vmsave='powershell Save-VM -Name CentOS7'
# alias vmpush='scp -r /e/share/ root@vm.com:/root/'
# alias vmpull='scp -r root@vm.com:/root/share /e'

alias powerls='powercfg -list'
alias powerp='powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e'
alias powerj='powercfg -setactive cd455189-d403-4cd1-8d85-f4a05e154633'
alias powerg='powercfg -setactive fecbe033-bb03-4f9d-8d80-ca037f9dbd40'
alias powerz='powercfg -setactive a1db411c-4ffc-4735-b498-97da0c177a36'

alias sysoff='shutdown -s -hybrid -t 0'
alias sysoffs='shutdown -s -t 0'
alias sysre='shutdown -r -t 0'

alias host='code /c/Windows/System32/drivers/etc/hosts'
alias ep='explorer .'

alias uft8='sed -i 's/GBK/UTF-8/' ~/.minttyrc'
alias gbk='sed -i 's/UTF-8/GBK/' ~/.minttyrc'

alias c='code .'
alias cblog='code ~/home/projects/doing/blog/'