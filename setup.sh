# Just a placeholder for setup steps on a fresh install.
# I don't run the full setup.sh file, but rather run the commands
# one by one, because I prefer visibility over the execution process.

# Core tools
brew install neovim tmux
brew install --cask ghostty font-jetbrains-mono-nerd-font

# Interesting new cli tools
brew install ripgrep
brew install fzf
brew install zoxide
brew install ranger

# tmux plugin manager (tmux.conf expects it at ~/.tmux/plugins/tpm)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Link the dotfiles to their respective config files
# (-n so re-running doesn't create nested links inside existing symlinked dirs)
ln -sn "$PWD/nvim" "$HOME/.config/nvim"
ln -sn "$PWD/tmux/tmux.conf" "$HOME/.tmux.conf"
mkdir -p "$HOME/.config/ghostty"
ln -sn "$PWD/ghostty/ghostty-config" "$HOME/.config/ghostty/config"

# Source the zsh aliases from .zshrc
echo "source $PWD/zsh/aliases.zsh" >> "$HOME/.zshrc"
