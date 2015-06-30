vi /etc/locale.gen
locale-gen 
echo LANG=zh_CN  > /etc/locale.conf
echo LANG=zh_CN.UTF-8  > /etc/locale.conf
vi /etc/locale.conf 
loadkeys us
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc --utc
passwd 
pacman -S grub
grub-install --help
grub-install --target=x86_64-pc --recheck /dev/sda
grub-install --target=x86_64 --recheck /dev/sda
man grub-install
grub-install --target=i386-pc --recheck --debug /dev/sda
ls
grub-mkconfig -o /boot/grub/grub.cfg
vi /boot/grub/grub.cfg
grub-menulst2cfg /boot/grub/menu.lst /boot/grub/grub.cfg
exit
ls
ls ..
ls
vi .bashrc 
source .bashrc 
pacman -S bash-completion
vi .bashrc
vi .bashrc
source .bash_profile 
vi .bashrc .bash
ls
ls
ls -la
vi /etc/bash.bashrc 
export
vi .bash_profile 
ls
ls
ls ..
vi /etc/bash.bashrc
ls
ls ..
ls
cd /etc/
rm bash.bashrc 
vi bash.bashrc
vi DIR_COLORS
vi DIR_COLORS
pacman -S python
pacman -S python2.7
pacman -Q python2
pacman -Q python
pacman 
pacman -h
pacman -D python
paclist -h
paclist pytho
paclist pythob
paclist python
pacman -S
pacman -S -h
pacman -S -g python
pacman -S -s python
pacman -S -s python | grep 2.7
pacman -S python2
paclist 
paclist ipython
paclist python
pacman -S -s ipython
pacman ipython
pacman -Sipython2
pacman -S ipython2
ipython
ipython2
pacman -S pip
pacman -S -s pip
pacman -S -s python-pip
pacman -S  python-pip
pacman -S  python-pip2
pacman -S  python2-pip
pacman -S  git
ls
git clone https://192.168.67.207/harpyham/my-awesome-cvim.git
git config --globle http.sslVerify "false"  
git config --globle http.sslVerify "false"
git config http.sslVerify "false"
git config --global http.sslVerify "false"
git clone https://192.168.67.207/harpyham/my-awesome-cvim.git
ls
rm ./*
rm ./* -r
useradd -m -g users -s /bin/bash coyote
passwd coyote
ls
cd /etc/
ls
cp /etc/bash.bashrc /home/coyote/.bashrc 
pacman -S fortune-mod
[[ "$PS1" ]] && /usr/bin/fortune
ls
[[ "$PS1" ]] && echo -e "\e[00;33m$(/usr/bin/fortune)\e[00m"
[[ "$PS1" ]] && echo -e "\e[00;33m$(/usr/bin/fortune)\e[00m"
[[ "$PS1" ]] && echo -e "\e[00;33m$(/usr/bin/fortune)\e[00m"
[[ "$PS1" ]] && echo -e "\e[00;33m$(/usr/bin/fortune)\e[00m"
[[ "$PS1" ]] && echo -e "\e[00;33m$(/usr/bin/fortune)\e[00m"
pacman -S -s vim
pacman -S -s vim | grep vim
pacman -S vim
pacman -S libclang vim-data vim-plugin-taglist ctags cscope
pacman -S jedi
pacman -S jedit 
pip2 install jedi
pip2 install autopep8
vim test
cd ..
pacman -S make
pacman -S mkdir
mkdir -d
pacman -S cscope
pacman -S ctags
pacman -S vim-plugin-taglist
pacman -S vim-taglist 
pacman -S openssl
vim /home/coyote/git/tawremo/setup.py 
pacman -S vundle

pacman -S vim-a vim-jedi 
pacman -S vim-a vim-jedi 
pacman -S python-jedi 
pacman -S python2-jedi 
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
pacman -S vim-a vim-jedi 
pacman -S vim-supertab
python
ls
cd /home/coyote/git/
ls
vi tawremo/setup.py 
ls
pacman -S sudo
vi /etc/sudoers
vi /etc/sudoers
cd my-awesome-cvim/
,s
ls
make install
cd ~/.vim/
ls
ln ~/.vim/vimrc /etc/vimrc
vi vimrc 
cd /home/coyote/
l
ls
cd gfi
cd git/
ls
vim 2q 
ls
vi 2q 
rm 2q 
ls
vi tawremo/setup.py 
vim tawremo/setup.py 
pacman -S vi
vi tawremo/setup.py 
vi ~/.bashrc 
ls
ln /usr/bin/vim /usr/bin/vi
ln -f /usr/bin/vim /usr/bin/vi
ls
vi tawremo/setup.py 
vi ~/.vim/vimrc 
ls
cp /etc/vimrc.bak  /etc/vimrc
vi ~/.vim/vimrc 
vim ~/.vim/vimrc 
ls
vi ~/.bashrc 
ls
cd ~/.vim/
ls
ln -f ~/.vim/vimrc /etc/vimrc
vi vimrc 
ls
 pacman -S ttf-dejavu wqy-microhei
ls
export
vi ~/.bash
ls
cd /home/coyote/
ls
cd git/
ls
cd tawremo/
ls
vi setup.py 
ls
cd /etc/
vi vimrc
rm vimrc
cd ..
ls
cd ~
cd .vim/
ls
ln -f /root/.vim/vimrc /etc/vimrc
ls -la /etc/vimrc
ls -ll /etc/vimrc
vi /etc/vimrc
ls
cp /home/coyote/git/my-awesome-cvim/.vim/vimrc ./
ls
vi vimrc 
vi vimrc 
vi vimrc 
vi vimrc 
vi vimrc 
ls
vi vimrc 
ls
vi ~/.bashrc 
vi ~/.bashrc 
source ~/.bashrc 
vim ~/.bashrc 
source ~/.bashrc 
vim ~/.bashrc 
ls
cd ..
cd /home/coyote/
ls
cd git/
ls
cd tawremo/
ls
vi setup.py 
cd tawremo/
ls
vi master.py 
vi master.py 
vi master.py 
vi master.py 
vi ~/.vim/vimrc 
vi master.py 
ls
ls
vi master.py 
ls
vi master.py 
ls
vi ~/.bashrc 
source ~/.bashrc 
ls
vi ~/.bashrc 
vi ~/.bash_profile 
vi ~/.bash_profile 
vi ~/.bashrc 
ls
vi master.py 
vi ~/.bashrc 
source ~/.bashrc 
ls
ls
vi master.py 
cd ~/.vim/
ls
cd bundle/
ls
cd python-mode/
ls
cd ..
ls
cd ..
ls
vi vimrc 
ls
cd bundle/
ls
ls
ls
cd python-mode/
ls
cd ..
ls
cd ..
ls
cd ..
cd /home/coyote/git/
ls
cd my-awesome-cvim/
ls
cd doc/
ls
cd ..
ls
make install
pacman -S cc
pacman -Ss cc
pacman -Ss cc | grep cc
ls
pacman -Ss gcc
pacman -S gcc
make install 
vi /root/.vim/vimrc
ls
vi .vim/vimrc 
make install
vi .vim/vimrc 
make install
vi .vim/vimrc 
cd ..
ls
git@192.168.67.207:chen_weiqing/my-awesome-cvim.git cwq-my-awesome-cvim
git clone git@192.168.67.207:chen_weiqing/my-awesome-cvim.git cwq-my-awesome-cvim
cat ~/.ssh/id_rsa.pub
cp /home/coyote/.ssh/id_rsa* ~/.ssh/
git clone git@192.168.67.207:chen_weiqing/my-awesome-cvim.git cwq-my-awesome-cvim
ls
cd cwq-my-awesome-cvim/
ls
vi .vim/vimrc 
git add .vim/vimrc
git commit 
git push
cd ..
cd tawremo/
ls
vi setup.py 
ls
vi setup.py 
vi setup.py 
vi setup.py 
vi setup.py 
vi setup.py 
vi setup.py 
cd tawremo/
ls
vi master.py 
vi master.py 
vi master.py 
vi agent.py 
cd .vim/
ls
vi vimrc 
ls
vi vimrc 
vi vimrc 
vi colors/taw.vim 
ls
cd bundle/
ls
vi ../vimrc 
vi ../vimrc 
vi ../vimrc 
vi ../vimrc 
vi ../vimrc 
vi ../vimrc 
cd ..
ls
cd colors/
ls
vi taw.vim 
cd ..
cd bundle/
ls
cd vim-airline/
ls
vi README.md 
ls
cd ..
cd ..
cd autoload/
ls
cd ..
ls
vi 
vi 
vi vimrc 
echo $TERM
vi vimrc 
vi vimrc 
vi vimrc 
vi colors/taw.vim 
ls
vi vimrc 
vi vimrc 
cdw
ls
cd git/
ls
git clone
git clone https://github.com/altercation/vim-colors-solarized.git
ls
cd vim-colors-solarized/
ls
cd colors/
ls
cp solarized.vim ~/.vim/colors/
ps -aux | grep vi
kill -9 32266
ls
cd ~/.vim/
ls
vi vimrc 
cd ~/.vim/
ls
vi vimrc 
ps -aux | grep vi
kill -9
kill -9 32286
vi vimrc 
