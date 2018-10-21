alias bashalias='code ~/.bash_profile'
alias bashcolor='code ~/.minttyrc'
alias bashconfig='code /etc/profile.d/git-prompt.sh'
alias bashsync='cp ~/.bash_profile ~/.minttyrc ~/.gitconfig /etc/profile.d/git-prompt.sh /e/doing/terminal-sync/ \
                && cd /e/doing/terminal-sync \
                && git add . && git commit -m update && git push'

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

alias vmssh='ssh root@vm.com'
alias vmls='powershell Get-VM'
alias vmstop='powershell Stop-VM -Name CentOS7'
alias vmstart='powershell Start-VM -Name CentOS7'
alias vmsave='powershell Save-VM -Name CentOS7'
alias vmpush='scp -r /e/share/ root@vm.com:/root/'
alias vmpull='scp -r root@vm.com:/root/share /e'

alias codesettings='code ~/AppData/Roaming/Code/User'
alias codesync='cp ~/AppData/Roaming/Code/User/snippets ~/AppData/Roaming/Code/User/keybindings.json \
                ~/AppData/Roaming/Code/User/settings.json /e/doing/vscode-sync -r \
                && cd /e/doing/vscode-sync && git add . && git commit -m update && git push'

alias powerls='powercfg -list'
alias powerp='powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e'
alias powerc='powercfg -setactive 9c405ad9-e0e3-4db6-9bfb-6e73ac04ef5a'
alias powerg='powercfg -setactive a5c8a72f-8554-4eb8-bd71-c8b975d9f247'
alias powerz='powercfg -setactive 85cac18c-2df4-45af-b398-7854edbf4355'
alias powerj='powercfg -setactive 84aa2535-0cc5-4458-b54c-329b2903df75'

alias sysoff='shutdown -s -hybrid -t 0'
alias sysoffs='shutdown -s -t 0'
alias sysre='shutdown -r -t 0'