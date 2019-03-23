if test -f /etc/profile.d/git-sdk.sh
then
	TITLEPREFIX=SDK-${MSYSTEM#MINGW}
else
	TITLEPREFIX=$MSYSTEM
fi

if test -f ~/.config/git/git-prompt.sh
then
	. ~/.config/git/git-prompt.sh
else
	PS1='\[\033]0;bash in \w\007\]'  # 窗口标题
	PS1="$PS1"'\n'                   # 换行
	PS1="$PS1"'\[\033[32;1m\]'       # 绿色
	PS1="$PS1"'➜  '
	PS1="$PS1"'\[\033[33;1m\]'       # 黄色
	PS1="$PS1"'\W'                   # 当前目录
	if test -z "$WINELOADERNOEXEC"
	then
		GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
		COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
		COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
		COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
		if test -f "$COMPLETION_PATH/git-prompt.sh"
		then
			. "$COMPLETION_PATH/git-completion.bash"
			. "$COMPLETION_PATH/git-prompt.sh"
			PS1="$PS1"'\[\033[36m\]'  # 青色
			PS1="$PS1"'`__git_ps1`'   # bash function
		fi
	fi
	PS1="$PS1"'\[\033[0m\] '      # 白色
fi

MSYS2_PS1="$PS1"               # for detection by MSYS2 SDK's bash.basrc


# 参考：http://www.voidcn.com/article/p-wavhthxe-tr.html