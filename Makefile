install:
	# Installs zplugin
	curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh | bash
	rm -rf ~/.zshrc
	ln -s `pwd`/zshrc ~/.zshrc
	ln -s `pwd` ~/.zsh
