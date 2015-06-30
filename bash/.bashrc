##################################################
# User Define
##################################################

# Bash
[ -r /etc/bash_completion ] && . /etc/completion
alias vi=vim

# Proxy
export http_proxy="http://192.168.59.242:44444"
export https_proxy="http://192.168.59.242:44444"

# VIM
export MYVIMRC=$HOME/.vim/vimrc
export VIMINIT="let &rtp='$HOME/.vim,' .&rtp
so $MYVIMRC"

# LS
alias ls='ls --color=auto'
LS_COLORS='no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:'
export LS_COLORS

# PS
export PS1="\[\033[01;31m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[00m\][\[\033[01;33m\]\t\[\033[00m\]]:\[\033[01;34m\]\w\[\033[00m\]\n$ "

# CMD
alias cdw='cd /home/coyote'
alias pip=pip2

# xterm
if [ "$TERM" == "xterm" ]; then
	export TERM=xterm-256color
fi

##################################################





##################################################
# Fancy PWD display function
##################################################
# The home directory (HOME) is replaced with a ~
# The last pwdmaxlen characters of the PWD are displayed
# Leading partial directory names are striped off
# /home/me/stuff		-> ~/stuff			if USER=me
# /usr/share/big_dir_name	-> ../share/big_dir_name	if pwdmaxlen=20
##################################################

bash_prompt_command() {
	# How many characters of the $PWD should be kept
	local pwdmaxlen=25
	# Indicate that there has been dir truncation
	local trunc_symbol=".."
	local dir=${PWD##*/}
	pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))
	NEW_PWD=${PWD/#$HOME/\~}
	local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))
	if [ ${pwdoffset} -gt "0" ]
	then
		NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
		NEW_PWD=${trunc_symbol}/${NEW_PWD#*/}
	fi
}
