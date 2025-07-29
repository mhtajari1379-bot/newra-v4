# Dotfiles

Welcome to my dotfiles repository! This repository contains configuration files and scripts to set up and customize my development environment using [`just`](https://github.com/casey/just) task automation.

* [Features](#features)
* [Installation](#installation)
* [Usage](#usage)
  * [Build](#build)
  * [AUR](#aur)
  * [Git](#git)
  * [Stow](#stow)
  * [Path](#path)
  * [Services](#services)
  * [Shell](#shell)
  * [TPM](#tpm)
  * [Setup](#setup)
* [Contributing](#contributing)
* [License](#license)

## Features

- **Package Management**: Install essential packages using `pacman` and manage AUR packages with a helper script.
- **Git Configuration**: Set up global Git settings including `delta` integration for enhanced diffs.
- **Directory Setup**: Create required directories for configuration files and binaries.
- **System Services**: Enable and start essential system services like Bluetooth.
- **Shell Customization**: Switch to the Fish shell for a modern command-line experience.
- **TPM Installation**: Install and configure Tmux Plugin Manager (TPM).
- **Meta Tasks**: Automate full setup with a single command.

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

Ensure `just` is installed and available in your shell path.

## Usage

### Build

Install essential system packages:

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

> ⚠️ **Note**: Review and edit Git details (name, email, and preferences) inside the Justfile before running this command.

### Stow

Symlink configuration files to appropriate locations:

```bash
just stow
```

### Path

Create required config directories (used primarily by `just stow`):

```bash
just path
```

> ⚠️ **Note**: This task is mainly a prerequisite for `just stow`. Running it directly is uncommon.

### Services

Enable and start system services:

```bash
just services
```

### Shell

Set Fish as your default shell:

```bash
just shell
```

### TPM

Install the Tmux Plugin Manager:

```bash
just tpm
```

### Setup

Run the complete setup sequence:

```bash
just setup
```

## Contributing

Pull requests and ideas are welcome! Feel free to open an issue or fork this project if you'd like to improve it.

## License

This project is licensed under the MIT License. Although there's no separate `LICENSE` file, you are free to use, modify, and distribute it under MIT terms.

---

Check out the repository here: [newra-v4](https://github.com/mhtajari1379-bot/newra-v4)
