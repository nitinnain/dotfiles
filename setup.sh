# Just a placeholder for setup steps on a fresh install.
# I don't run the full setup.sh file, but rather run the commands
# one by one, because I prefer visibility over the execution process.

# Interesting new cli tools
brew install rg
brew install fzf
brew install zoxide
brew install ranger

# Link the dotfiles to their respecive config files
ln -s $PWD/nvim $HOME/.config/nvim
ln -s $PWD/tmux/tmux.conf $HOME/.tmux.conf
ln -s $PWD/ranger $HOME/.config/ranger

# TODO ln -s $PWD/zsh ~/.config/zsh
