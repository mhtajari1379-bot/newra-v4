PKGLIST = ./packages.txt
AUR = ./aur-packages.txt
GITCONFIG = git config --global
MKDIR = mkdir -p
ENABLE = sudo systemctl enable
START = sudo systemctl start

build: $(PKGLIST)
	sudo pacman -Syu --needed - < $(PKGLIST)

aur: $(AUR)
	./scripts/.local/bin/aur-helper $(AUR)

git:
	$(GITCONFIG) user.email "mhtajari1379@gmail.com"
	$(GITCONFIG) user.name "mhtajari"
	$(GITCONFIG) credential.helper store
	$(GITCONFIG) push.autoSetupRemote true
	$(GITCONFIG) alias.cmp '!f() { git add -A && git commit -m "$@" && git push; }; f'

stow: path
	stow */

path:
	$(MKDIR) ~/.config/fish/functions
	$(MKDIR) ~/.config/ghostty
	$(MKDIR) ~/.config/nvim
	$(MKDIR) ~/.local/bin

services:
	$(ENABLE) bluetooth.service
	$(START) bluetooth.service

fish:
	chsh -s /usr/bin/fish

lazy:
	git clone https://github.com/LazyVim/starter ~/.config/nvim
