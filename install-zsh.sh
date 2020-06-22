#!/bin/bash

#     My Ubuntu Personal Package Collection Curation.
#     It's a collection of scripts to install my favorite apps on Ubuntu enviroment.
#     It's made expecifically to Ubuntu 17.10 (Artful Aardvark)

#     Copyright (C) 2018 Leonardo de Albuquerque Gouveia

#     This program is free software; you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation; either version 2 of the License, or
#     (at your option) any later version.

#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.

#     You should have received a copy of the GNU General Public License along
#     with this program; if not, write to the Free Software Foundation, Inc.,
#     51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

echo "APPS INSTALLATION AUTOMATION SCRIPTS"
echo "------------------------------------"
echo ""
echo ""
echo "******* INSTALL ZSH   *******"



sudo apt install zsh python3 python-is-python3 -y

# TODO: USE DOTFILES!?

cat <<EOF >~/.zshrc
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH="${HOME}/.cache/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

source ~/.zsh_plugins.sh

# Example aliases
alias zshsource="source ~/.zshrc"
alias zshconfig="code ~/.zshrc"
alias zshplugins="code ~/.zsh_plugins.txt"
alias update_antibody_plugins="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"

# Tilix config
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte-2.91.sh
fi

EOF


zsh 

echo "*** INSTALLING ANTIBODY ***"
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

echo "*** CREATING ZSH PLUGINS FILE ***"
cat <<EOF >~/.zsh_plugins.txt
djui/alias-tips

# Oh My zsh
robbyrussell/oh-my-zsh

# Plugins
robbyrussell/oh-my-zsh folder:plugins/common-aliases
robbyrussell/oh-my-zsh path:plugins/debian
robbyrussell/oh-my-zsh path:plugins/git
robbyrussell/oh-my-zsh path:plugins/node
robbyrussell/oh-my-zsh path:plugins/npm
robbyrussell/oh-my-zsh path:plugins/gitfast
robbyrussell/oh-my-zsh path:plugins/command-not-found
robbyrussell/oh-my-zsh path:plugins/sublime
robbyrussell/oh-my-zsh path:plugins/web-search

zsh-users/zsh-completions
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search

#theme
denysdovhan/spaceship-prompt
EOF

echo "*** STATIC LOADING PLUGINS ***"
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

echo "*** SOUCING .ZSHRC ***"
source ~/.zshrc

echo "*** INTALL FNM (FAST NODE MANAGER) ***"
curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash
