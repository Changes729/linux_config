if [[ ! $DISPLAY && $XDG_VTNR -le 3 ]]; then  # le 3 可以支持多显示器
    case $(ps -o comm= -p $PPID) in
        sshd | */sshd) echo "Welcome ssh." ;; # 判断终端是否是ssh登陆的
	*) exec startx ~/.xinitrc i3;;	      # 只允许电脑启动xserver
    esac
fi
