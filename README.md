# dotfiles

My dotfiles and scripts.

## What's in here

| Directory  | Contents                                                                  | Links to                            |
| ---------- | ------------------------------------------------------------------------ | ----------------------------------- |
| `nvim/`    | Neovim config, based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) — see [nvim/README.md](nvim/README.md) | `~/.config/nvim`                    |
| `tmux/`    | tmux config (prefix `C-a`, vim-style navigation, tpm plugins)             | `~/.tmux.conf`                      |
| `ghostty/` | [Ghostty](https://ghostty.org) terminal config                            | `~/.config/ghostty/config`          |
| `zsh/`     | zsh aliases, sourced from `~/.zshrc`                                      | —                                   |

## Setup

[`setup.sh`](setup.sh) documents the steps for a fresh (macOS) install:
installing the tools via Homebrew, cloning [tpm](https://github.com/tmux-plugins/tpm),
and symlinking the configs into place. I run the commands one by one rather
than executing the script, for visibility over the process.
