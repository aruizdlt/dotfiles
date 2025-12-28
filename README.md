# Dotfiles

This repository contains my personal configurations (dotfiles) for tools and applications I use in my development environment. It is designed to be easily installable and customizable.

## Content

- **alacritty/**: Configurations for Alacritty, a fast and configurable terminal emulator.
  - `alacritty.toml`: Main configuration.
  - `nord.toml`: Nord theme for Alacritty.
- **starship/**: Configuration for Starship, a minimal, fast, and customizable prompt for any shell.
  - `starship.toml`: Main configuration.

## Requirements

- Linux (tested on Ubuntu 24.04 LTS)
- Git
- Alacritty terminal emulator
- [Fira Code](https://github.com/tonsky/FiraCode) font (required for the font configuration in alacritty.toml)
- Starship (install from https://starship.rs/)

## Installation

1. Clone this repository into your home directory:
   ```
   git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
   ```

2. Run the bootstrap script to set up the symbolic links:
   ```
   cd ~/.dotfiles && ./bootstrap.sh
   ```

3. Restart Alacritty to apply the changes, and restart your shell or source your ~/.bashrc to apply Starship changes.

## Usage

- Customize the configurations according to your needs.
- Make sure Alacritty and Starship are installed on your system.

## Contribution

If you have suggestions or improvements, feel free to submit a pull request!

## License

This project is under the MIT License. See the LICENSE file for more details.