install:
	curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh | sh -s
	rm ~/.zshrc
	ln -s `pwd`/zshrc ~/.zshrc
