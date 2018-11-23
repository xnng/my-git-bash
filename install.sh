#!/bin/bash
git clone https://gitee.com/xnng/bash.git \
&& cd bash \

&& echo "-------configuration appearance" \
&& cp .minttyrc ~ \
&& cp git-prompt.sh /etc/profile.d \

&& echo "-------configuration alias" \
&& cp .bash_profile ~ \

&& echo "-------install tree and wget" \
&& cp tools/* /usr/bin \

&& echo "-------install fonts" \
&& copy fonts/* c/Windows/Fonts \

&& echo "-------install tmux" \
&& cp tmux/bin/* /usr/bin \
&& cp tmux/share/* /usr/share -r \

&& echo "-------configuration tmux" \
&& echo -e "setw -g mouse \n
set-option -g history-limit 20000 \n
set-option -g mouse on \n
bind -n WheelUpPane select-pane -t= \; copy-mode -e \; send-keys -M \n
bind -n WheelDownPane select-pane -t= \; send-keys -M" > ~/.tmux.conf \

&& echo "-------configuration proxy and user infomation" \
&& cp .gitconfig ~ \

&& echo "-------configuration vim" \
&& mkdir -p ~/.vim/colors \
&& cp vim-theme/colors/molokai.vim ~/.vim/colors/ \
&& cp .vimrc ~

&& echo "-------clean repository" \
&& rm ../bash -rf \
&& echo "enjoy it !"