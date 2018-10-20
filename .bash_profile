alias bashalias='code ~/.bash_profile'
alias bashcolor='code ~/.minttyrc'
alias bashconfig='code /etc/profile.d/git-prompt.sh'
alias bashsync='cp ~/.bash_profile ~/.minttyrc ~/.gitconfig /etc/profile.d/git-prompt.sh /e/doing/terminal-sync/ \
                && cd /e/doing/terminal-sync \
                && git add . && git commit -m update && git push'

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
alias vmps='powershell Get-VM'
alias vmstop='powershell Stop-VM -Name CentOS7'
alias vmstart='powershell Start-VM -Name CentOS7'
alias vmsave='powershell Save-VM -Name CentOS7'
alias vmpush='scp -r /e/share/ root@vm.com:/root/'
alias vmpull='scp -r root@vm.com:/root/share /e'

alias codesettings='code ~/AppData/Roaming/Code/User'
alias codesync='cp ~/AppData/Roaming/Code/User/snippets ~/AppData/Roaming/Code/User/keybindings.json \
                ~/AppData/Roaming/Code/User/settings.json /e/doing/vscode-sync -r \
                && cd /e/doing/vscode-sync && git add . && git commit -m update && git push'