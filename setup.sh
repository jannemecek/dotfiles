#!/usr/bin/env bash

ln -s ~/Developer/dotfiles/nvim/ ~/.config
ln -s ~/Developer/dotfiles/.tmux.conf ~
ln -s ~/Developer/dotfiles/kitty.conf ~/.config/kitty
mkdir ~/.config/ghostty/
ln -s ~/Developer/dotfiles/ghostty ~/.config/ghostty/config
ln -s ~/Developer/dotfiles/.yabairc ~
ln -s ~/Developer/dotfiles/.skhdrc ~

# Claude commands
mkdir -p ~/.claude
ln -s ~/Developer/dotfiles/.claude/commands ~/.claude/
