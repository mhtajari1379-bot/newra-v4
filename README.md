# Dotfiles

Welcome to my dotfiles repository! This repository contains configuration files and scripts to set up and customize my development environment.

## Features

* **Package Management**: Install essential packages using `pacman` and manage AUR packages with a helper script.
* **Git Configuration**: Set up global Git settings for seamless version control.
* **Directory Setup**: Create necessary directories for configuration files and binaries.
* **System Services**: Enable and start essential system services.
* **Shell Customization**: Switch to the Fish shell for an enhanced terminal experience.
* **LazyVim Integration**: Clone and set up LazyVim for Neovim.

## Installation

To install my dotfiles, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/mhtajari1379-bot/newra-v4.git
   ```

2. Navigate to the dotfiles directory:

   ```bash
   cd ~/newra-v4
   ```

## Usage

### Build

Install essential packages:

```bash
make build
```

### AUR

Install AUR packages:

```bash
make aur
```

### Git

Set up Git configuration:

```bash
make git
```

> ⚠️ Note: Make sure to check and edit the Git settings manually inside the Makefile—especially user name, email, and credential settings—before running this command.

### Stow

Symlink configuration files:

```bash
make stow
```

### Path

Create necessary directories (primarily for use with `make stow`):

```bash
make path
```

> ⚠️ Note: The `path` target is primarily intended to support `make stow` and should not be run on its own under normal circumstances.

### Services

Enable and start system services:

```bash
make services
```

### Shell

Switch to Fish shell:

```bash
make shell
```

### LazyVim

Set up LazyVim for Neovim:

```bash
make lazy
```

## Contributing

Feel free to open an issue or submit a pull request with suggestions or improvements.

## License

This project is licensed under the MIT License. While there is no separate `LICENSE` file, you are free to use, modify, and distribute the contents under the terms of the MIT License.

---

Check out the repository here: [newra-v4](https://github.com/mhtajari1379-bot/newra-v4)
