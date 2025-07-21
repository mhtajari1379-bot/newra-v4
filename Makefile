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
	$(GITCONFIG) core.pager delta
	$(GITCONFIG) interactive.diffFilter "delta --color-only"
	$(GITCONFIG) delta.navigate true
	$(GITCONFIG) merge.conflictStyle zdiff3
	$(GITCONFIG) delta.line-numbers true
	$(GITCONFIG) delta.side-by-side true

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

shell:
	chsh -s /usr/bin/fish

lazy:
	git clone https://github.com/LazyVim/starter ~/.config/nvim
