# Dotfiles

This repository contains my personal configurations (dotfiles) for tools and applications I use in my development environment. It is designed to be easily installable and customizable.

## Content

- **alacritty/**: Configurations for Alacritty, a fast and configurable terminal emulator.
  - `alacritty.toml`: Main configuration.
  - `nord.toml`: Nord theme for Alacritty.
- **starship/**: Configuration for Starship, a minimal, fast, and customizable prompt for any shell.
  - `starship.toml`: Main configuration.
- **tmux/**: Configuration for tmux, a terminal multiplexer for efficient workflow.
  - `.tmux.conf`: Optimized configuration with vim-style navigation and Gruvbox theme.

## Requirements

- Linux (tested on Ubuntu 24.04 LTS)
- Git
- Alacritty terminal emulator
- [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts) (required for the font configuration in alacritty.toml and Starship symbols)
- Starship (install from https://starship.rs/)
- tmux (install with `sudo apt install tmux` on Ubuntu/Debian)

## Installation

1. Clone this repository into your home directory:
   ```
   git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
   ```

2. Run the bootstrap script to set up the symbolic links:
   ```
   cd ~/.dotfiles && ./bootstrap.sh
   ```

3. Restart Alacritty to apply the changes, restart your shell or source your ~/.bashrc to apply Starship changes, and start or restart tmux.

## Usage

- Customize the configurations according to your needs.
- Make sure Alacritty, Starship, and tmux are installed on your system.

### Tmux Key Bindings

The tmux configuration includes the following optimizations:

**Prefix Key:** Changed to `Ctrl+a` (more ergonomic than default `Ctrl+b`)

**Essential Commands:**
- `Ctrl+a |` - Split pane vertically
- `Ctrl+a -` - Split pane horizontally
- `Ctrl+a r` - Reload tmux configuration
- `Alt+h/j/k/l` - Navigate between panes (vim-style, no prefix needed)
- `Shift+Left/Right` - Navigate between windows
- `Ctrl+a h/j/k/l` - Resize panes (vim-style)
- `Ctrl+a z` - Toggle pane zoom
- `Ctrl+a [` - Enter copy mode (vi-style)
- `Ctrl+a x` - Close pane
- `Ctrl+a c` - New window

## Contribution

If you have suggestions or improvements, feel free to submit a pull request!

## License

This project is under the MIT License. See the LICENSE file for more details.