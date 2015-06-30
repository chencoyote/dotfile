
all:
	@echo "Please run make  install to install the vim plugins"

install:
	@cp ./.vim ~/ -fr
	@cp ./bash/* ~/ -fr
	vim +PluginInstall
	vim -c"Helptags" -c quit
