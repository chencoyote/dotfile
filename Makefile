
all:
	@echo "Please run make  install to install the vim plugins"

install:
	@cp ./.vim ~/ -fr
	@cp ./bash/.bash_profile ~/ -fr
	@cp ./bash/.bashrc ~/ -fr
	vim +PluginInstall
	vim -c"Helptags" -c quit
