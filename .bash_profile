alias bashalias='code ~/.bash_profile'
alias bashcolor='code ~/.minttyrc'
alias bashconfig='code /etc/profile.d/git-prompt.sh'
alias gitconfig='code ~/.gitconfig'
alias bashsync='cp ~/.bash_profile ~/.minttyrc ~/.gitconfig /etc/profile.d/git-prompt.sh ~/home/projects/doing/bash/ \
                && cd ~/home/projects/doing/bash \
                && git add . && git commit -m update && git push origin master && git push gitee master && cd -'

alias ,='cd -'
alias .='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias e='exit'
alias cls='clear'
alias do='cd ~/home/projects/doing'

alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias ga='git add .'

alias who-am-i="echo 'My nickname is xnng. I am a senior student in software major.'"
alias where-am-i="echo 'Here is my personal blog, built by vuepress of Evan You.'"
alias how-to-contact="echo 'Mailing to xnng77@gmail.com.
---------------------------
I am waiting for you!'"

alias sshv='ssh root@45.32.250.216'
alias ssha='ssh root@101.132.101.124'
alias vmssh='ssh root@vm.com'
alias vmls='powershell Get-VM'
alias vmstop='powershell Stop-VM -Name CentOS7'
alias vmstart='powershell Start-VM -Name CentOS7'
alias vmsave='powershell Save-VM -Name CentOS7'
alias vmpush='scp -r /e/share/ root@vm.com:/root/'
alias vmpull='scp -r root@vm.com:/root/share /e'

alias power='powercfg -list'
alias poweru='powercfg -setactive 04ecc1aa-daf2-4274-9fdc-d54349eade0d'
alias powerh='powercfg -setactive 35a6c254-44e1-47f8-9816-aa5a6833bbf0'
alias powerb='powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e'
alias powers='powercfg -setactive 61db41c8-070b-4105-a247-68c014db05df'

alias sysoff='shutdown -s -t 0'
alias sysre='shutdown -r -t 0'

alias host='code /c/Windows/System32/drivers/etc/hosts'
alias ep='explorer . && exit'
alias c='code . && exit'

alias utf8='sed -i 's/GBK/UTF-8/' ~/.minttyrc'
alias gbk='sed -i 's/UTF-8/GBK/' ~/.minttyrc'

alias tree1='tree -L 1'
alias tree2='tree -L 2'
