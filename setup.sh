#!/bin/bash

link() {
	ln -sf "$1" "$2"
	echo "Linked: $2 → $1"
}

check_cmd() {
    # Returns true if command exists
	command -v "$1" >/dev/null 2>&1
}


DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# zshrc
if [[ "$SHELL" == *zsh ]]; then
	link "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
    link "$DOTFILES_DIR/zprofile" "$HOME/.zprofile"
else
	echo "[!!] Current shell is not zsh, skipping .zshrc and .zprofile"
fi


# git
if check_cmd git; then
	link "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"
	link "$DOTFILES_DIR/gitignore_global" "$HOME/.gitignore_global"
else
	echo "[!!] git not found, skipping .gitconfig and .gitignore_global"
fi


# nvim
if check_cmd nvim; then
    mkdir -p "$HOME/.config"
	link "$DOTFILES_DIR/config/nvim" "$HOME/.config/nvim"
else
	echo "[!!] nvim not found, skipping Neovim config"
fi


# starship
if check_cmd starship; then
    mkdir -p "$HOME/.config"
	link "$DOTFILES_DIR/config/starship.toml" "$HOME/.config/starship.toml"
else
	echo "[!!] starship not found, skipping starship config"
fi


