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
alias powerj='powercfg -setactive 68a61b87-5b81-4566-b5cf-c78e9bf42214'
alias powerg='powercfg -setactive 69d33692-a27d-49e5-935a-10a795214e67'
alias powerz='powercfg -setactive 87745074-d2aa-441f-87ed-7fd314a5ed9c'
alias powers='powercfg -setactive 8b45989d-5b86-45f4-ada5-48b7f4379457'

alias sysoff='shutdown -s -hybrid -t 0'
alias sysoffs='shutdown -s -t 0'
alias sysre='shutdown -r -t 0'

alias host='code /c/Windows/System32/drivers/etc/hosts'