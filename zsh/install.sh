#!/bin/bash

mkdir -p /usr/share/zsh/plugins

[ ! -d /usr/share/zsh/plugins/zsh-syntax-highlighting ] && \
  git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git /usr/share/zsh/plugins/zsh-syntax-highlighting

[ ! -d /usr/share/zsh/plugins/zsh-history-substring-search ] && \
  git clone --depth 1 https://github.com/zsh-users/zsh-history-substring-search.git /usr/share/zsh/plugins/zsh-history-substring-search

[ ! -d /usr/share/zsh/plugins/zsh-autosuggestions ] && \
  git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git /usr/share/zsh/plugins/zsh-autosuggestions

mkdir -p ~/.config/zsh
cp zsh.conf ~/.config/zsh/zsh.conf
cp zshrc ~/.zshrc

chsh -s $(which zsh)
