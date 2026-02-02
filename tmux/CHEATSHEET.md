# Tmux Cheatsheet - Quick Reference

## Prefix Key
All commands require the prefix key first (unless noted): **`Ctrl+a`**

## Sessions

| Key Binding | Action |
|------------|--------|
| `tmux` | Start new session |
| `tmux new -s <name>` | Start new named session |
| `tmux ls` | List sessions |
| `tmux attach -t <name>` | Attach to session |
| `Ctrl+a d` | Detach from session |
| `Ctrl+a s` | Choose session interactively |
| `Ctrl+a $` | Rename current session |

## Windows (Tabs)

| Key Binding | Action |
|------------|--------|
| `Ctrl+a c` | Create new window |
| `Ctrl+a ,` | Rename current window |
| `Ctrl+a w` | List windows |
| `Ctrl+a n` | Next window |
| `Ctrl+a p` | Previous window |
| `Shift+Left` | Previous window (no prefix) |
| `Shift+Right` | Next window (no prefix) |
| `Ctrl+a 0-9` | Switch to window by number |
| `Ctrl+a X` | Kill current window |
| `Ctrl+a &` | Kill current window (with confirmation) |
| `Ctrl+a <` | Move window left |
| `Ctrl+a >` | Move window right |

## Panes (Splits)

| Key Binding | Action |
|------------|--------|
| `Ctrl+a \|` | Split vertically (side by side) |
| `Ctrl+a -` | Split horizontally (top/bottom) |
| `Alt+h/j/k/l` | Navigate panes vim-style (no prefix) |
| `Ctrl+a Left/Down/Up/Right` | Resize pane |
| `Ctrl+a h/j/k/l` | Resize pane vim-style |
| `Ctrl+a z` | Toggle pane zoom (fullscreen) |
| `Ctrl+a x` | Close current pane |
| `Ctrl+a q` | Show pane numbers |
| `Ctrl+a o` | Cycle through panes |
| `Ctrl+a {` | Move pane left |
| `Ctrl+a }` | Move pane right |
| `Ctrl+a Space` | Toggle pane layouts |
| `Ctrl+a b` | Break pane into new window |
| `Ctrl+a j` | Join pane from another window |

## Copy Mode (Vi-style)

| Key Binding | Action |
|------------|--------|
| `Ctrl+a [` | Enter copy mode |
| `q` | Exit copy mode |
| `v` | Start selection (in copy mode) |
| `Ctrl+v` | Rectangle selection (in copy mode) |
| `y` | Copy selection and exit (in copy mode) |
| `Ctrl+a ]` | Paste buffer |
| `Ctrl+PgUp` | Enter copy mode and scroll up (no prefix) |
| `/` | Search forward (in copy mode) |
| `?` | Search backward (in copy mode) |
| `n` | Next search result (in copy mode) |
| `N` | Previous search result (in copy mode) |

## Other Useful Commands

| Key Binding | Action |
|------------|--------|
| `Ctrl+a r` | Reload tmux configuration |
| `Ctrl+a ?` | Show all key bindings |
| `Ctrl+a t` | Show clock |
| `Ctrl+a Ctrl+l` | Clear screen and history |
| `Ctrl+a :` | Enter command mode |

## Mouse Support

Mouse support is enabled by default:
- Click to select pane
- Click window name to switch
- Drag pane border to resize
- Scroll to navigate history
- Double-click to select word
- Triple-click to select line

## Tips for Efficient Workflow

1. **Use named sessions** for different projects:
   ```bash
   tmux new -s project1
   tmux new -s project2
   ```

2. **Detach and reattach** to keep work sessions alive:
   ```bash
   tmux attach -t project1
   ```

3. **Navigate without prefix** using Alt+hjkl for panes and Shift+arrows for windows

4. **Split intelligently**: Use `|` for vertical and `-` for horizontal splits

5. **Zoom panes** with `Ctrl+a z` when you need to focus on one task

6. **Copy mode** with vim keybindings makes text selection fast and familiar

7. **Use layouts** with `Ctrl+a Space` to organize multiple panes

8. **Rename sessions and windows** to stay organized in complex workflows

## Common Workflows

### Development Workflow
```
Window 1: Editor (3 panes: main code, tests, docs)
Window 2: Terminal (2 panes: build, logs)
Window 3: Git (1 pane)
Window 4: Server/Database
```

### Quick Setup Example
```bash
# Start new session
tmux new -s dev

# Split into 3 panes
Ctrl+a |    # vertical split
Ctrl+a -    # horizontal split

# Navigate and resize as needed
Alt+h/j/k/l  # move between panes
Ctrl+a h/j/k/l  # resize panes
```

## Plugins (Optional)

To extend tmux functionality, install TPM (Tmux Plugin Manager):

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then uncomment the plugin lines in `.tmux.conf` and press `Ctrl+a I` to install plugins.

Recommended plugins:
- **tmux-resurrect**: Save and restore tmux sessions
- **tmux-continuum**: Auto-save sessions continuously
- **tmux-yank**: Enhanced clipboard integration

## Resources

- Official documentation: https://github.com/tmux/tmux/wiki
- Man page: `man tmux`
- Command mode help: `Ctrl+a :list-keys`
