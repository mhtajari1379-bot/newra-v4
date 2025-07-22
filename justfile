# Variables
pkgs_file      := "./packages.txt"
aur_file       := "./aur-packages.txt"
aur_helper     := "./scripts/.local/bin/aur-helper"
git_cfg        := "git config --global"
git_email      := "mhtajari1379@gmail.com"
git_name       := "mhtajari"
fish_shell     := "/usr/bin/fish"
nvim_config    := "~/.config/nvim"
tmux_config    := "~/.config/tmux"
fish_funcs_dir := "~/.config/fish/functions"
ghostty_dir    := "~/.config/ghostty"
local_bin_dir  := "~/.local/bin"
mk             := "mkdir -p"
svc_enable     := "sudo systemctl enable"
svc_start      := "sudo systemctl start"

set shell := ["bash", "-cu"]

# Default Task
default: setup

# System Package Installation
build:
  sudo pacman -Syu --needed - < {{pkgs_file}}

aur:
  {{aur_helper}} {{aur_file}}

# Git Configuration
git:
  {{git_cfg}} user.email {{git_email}}
  {{git_cfg}} user.name {{git_name}}
  {{git_cfg}} credential.helper store
  {{git_cfg}} push.autoSetupRemote true
  {{git_cfg}} core.pager delta
  {{git_cfg}} interactive.diffFilter "delta --color-only"
  {{git_cfg}} delta.navigate true
  {{git_cfg}} merge.conflictStyle zdiff3
  {{git_cfg}} delta.line-numbers true
  {{git_cfg}} delta.side-by-side true

# Dotfiles & Stow
path:
  {{mk}} {{fish_funcs_dir}}
  {{mk}} {{ghostty_dir}}
  {{mk}} {{nvim_config}}
  {{mk}} {{tmux_config}}
  {{mk}} {{local_bin_dir}}

stow: path
  stow */

# Services & Shell
services:
  {{svc_enable}} bluetooth.service
  {{svc_start}} bluetooth.service

shell:
  chsh -s {{fish_shell}}

# Meta-Task
setup: build aur git stow services shell
  @printf "\n✅ Setup complete!\n"
