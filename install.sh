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
&& echo "-------install tmux" \
&& cp tmux/bin/* /usr/bin \
&& cp tmux/share/* /usr/share -r \
&& echo "-------install tmux plugins" \
&& mkdir -p ~/.tmux/plugins/tpm \
&& git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm \
&& cp tmux/.tmux.conf ~ \
&& echo "press 'prefix I' to install plugins" \
&& echo "-------configuration proxy and user infomation" \
&& cp .gitconfig ~ \
&& echo "-------install fonts" \
&& start c://Windows//Fonts \
&& start %cd%/fonts \
&& echo "please copy 'DejaVu Sans Mono for Powerline.tty' to 'C:/Windows/Fonts' by your hands" \
&& echo "enjoy it !"