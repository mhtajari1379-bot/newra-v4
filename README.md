# Dotfiles

Welcome to my dotfiles repository! This repository contains configuration files and scripts to set up and customize my development environment using [`just`](https://github.com/casey/just) task automation.

## Features

* **Package Management**: Install essential packages using `pacman` and manage AUR packages with a helper script.
* **Git Configuration**: Set up global Git settings including `delta` integration for enhanced diffs.
* **Directory Setup**: Create necessary directories for configuration files and binaries.
* **System Services**: Enable and start essential system services like Bluetooth.
* **Shell Customization**: Switch to the Fish shell for an enhanced terminal experience.
* **Meta Tasks**: Automate environment setup.

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

Make sure `just` is installed and available in your shell path.

## Usage

### Build

Install essential packages:

```bash
just build
```

### AUR

Install AUR packages:

```bash
just aur
```

### Git

Set up Git configuration:

```bash
just git
```

> ⚠️ Note: Review and edit the Git configuration in the Justfile before running, especially the user name, email, and other global settings.

### Stow

Symlink configuration files:

```bash
just stow
```

### Path

Create required config directories (primarily for use with `just stow`):

```bash
just path
```

> ⚠️ Note: The `path` task is designed to support `just stow` and should not typically be run standalone.

### Services

Enable and start system services:

```bash
just services
```

### Shell

Switch to the Fish shell:

```bash
just shell
```

### Setup

Run the complete setup sequence:

```bash
just setup
```

## Contributing

Suggestions, pull requests, and feedback are welcome. Open an issue if you'd like to improve or modify the setup.

## License

This project is released under the MIT License. While no separate `LICENSE` file is included, you're free to use, modify, and distribute the code under MIT terms.

---

Check out the repository here: [newra-v4](https://github.com/mhtajari1379-bot/newra-v4)
