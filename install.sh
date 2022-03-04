# Ensure necessary packages are installed

sudo apt install curl vim

#install nix
sh <(curl -L https://nixos.org/nix/install) --daemon


# install nix plugins
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.bat \
	nixpkgs.antibody \


# stow
stow git
stow zsh
stow nvim

# add zsh to valid logins shells
command -v zsh | sudo tee -a /etc/shells

# set zsh as default terminal
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt >~/.zsh_plugins.sh


