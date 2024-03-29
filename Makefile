ZINIT_HOME="${HOME}/.local/share/zinit/zinit.git"

deps:
	#inetutils provides hostname, which the prompt relies on
	sudo pacman -S inetutils
	go install github.com/cortesi/modd/cmd/modd@latest

install:
	sudo pacman -S zsh

chsh:
	ZSH_PATH="$(shell which zsh)"; chsh -s "$$ZSH_PATH"

config:
	# Installs zinit
	rm -rf "$(shell dirname $(ZINIT_HOME))"
	mkdir -p "$(shell dirname $(ZINIT_HOME))"
	git clone https://github.com/zdharma-continuum/zinit.git $(ZINIT_HOME)

	rm -rf ~/.zshrc
	rm -rf ~/.zsh
	ln -s `pwd`/zshrc ~/.zshrc
	ln -s `pwd` ~/.zsh

all: install chsh deps config
