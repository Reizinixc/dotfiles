#!/bin/sh

DOTFILES=$HOME/.dotfiles

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME"/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Update Homebrew recipes
# https://github.com/Homebrew/brew/issues/1151
brew update --force


###############################################################################
# Autohosts                                                                   #
###############################################################################

AUTOHOSTS="$HOME"/autohosts

# Install Autohosts
git clone https://github.com/angela-d/autohosts.git "$AUTOHOSTS"

# Link the host configurations
rm -f "$AUTOHOSTS"/custom_filters && ln -s "$DOTFILES"/autohosts/custom_filters "$AUTOHOSTS"/custom_filters
rm -f "$AUTOHOSTS"/hosts_source && ln -s "$DOTFILES"/autohosts/hosts_source "$AUTOHOSTS"/hosts_source
rm -f "$AUTOHOSTS"/whitelist && ln -s "$DOTFILES"/autohosts/whitelist "$AUTOHOSTS"/whitelist

###############################################################################
# Vim                                                                         #
###############################################################################

# Install newer version of Vim
brew install vim --with-override-system-vi

# Link the Vim configuration settings
rm -f $HOME/.vimrc && ln -s "$DOTFILES"/.vimrc $HOME/.vimrc

###############################################################################
# Git                                                                         #
###############################################################################

# Git CLI
brew install git

# Git GUI
brew install --cask smartgit

# Link the git configuration settings
rm -f $HOME/.gitconfig && ln -s "$DOTFILES"/.gitconfig $HOME/.gitconfig
rm -f $HOME/.gitignore && ln -s "$DOTFILES"/.gitignore $HOME/.gitignore

###############################################################################
# ZSH and plugins                                                             #
###############################################################################

# Install ZSH
brew install zsh

# Create a directory for the ZSH plugins
# Since we will not use oh-my-zsh to manage plugins.
ZSH_PLUGINS=$HOME/.zsh/plugins

mkdir -p "$ZSH_PLUGINS"

# Install fast-syntax-highlighting
git clone git@github.com:zdharma-zmirror/fast-syntax-highlighting.git "$ZSH_PLUGINS"/fast-syntax-highlighting

# Install zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-autosuggestions.git "$ZSH_PLUGINS"/zsh-autosuggestions

# Install zsh-completions
git clone git@github.com:zsh-users/zsh-completions.git "$ZSH_PLUGINS"/zsh-completions

# Install zsh-history-substring-search
git clone git@github.com:zsh-users/zsh-history-substring-search "$ZSH_PLUGINS"/zsh-history-substring-search

# Link the ZSH configuration settings
rm -f "$HOME"/.zshrc && ln -s "$HOME"/.dotfiles/.zshrc "$HOME"/.zshrc
rm -f "$HOME"/.inputrc && ln -s "$HOME"/.dotfiles/.inputrc "$HOME"/.inputrc

unset ZSH_PLUGINS

###############################################################################
# Container Runtime                                                           #
###############################################################################

# Install Docker
brew install docker
brew install docker-buildx
brew install docker-compose

# Install Colima
brew install colima

###############################################################################
# Kubernetes                                                                  #
###############################################################################

# Install Kubernetes
brew install kubernetes-cli

# Install Helm
brew install helm

# Install tools for Kubernetes
brew install kubectx
brew install derailed/k9s/k9s

# Kubectl neat


###############################################################################
# Web development                                                             #
###############################################################################

# Tools to make the self-signed certificate for local development
brew install mkcert

# mkcert requires nss for Firefox
brew install nss

# Install the newer version of wget
brew install wget

# Install Bruno
brew install --cask bruno

# Node development
brew install node

# Swagger linter
brew install daveshanley/vacuum/vacuum

# Browser for development
brew install --cask brave-browser

# For FTP/S3 development
brew install --cask cyberduck

# JetBrains Toolbox for managing JetBrains IDEs
brew install --cask jetbrains-toolbox

###############################################################################
# SRE related software                                                        #
###############################################################################

# Install Terraform
brew install hashicorp/tap/terraform

###############################################################################
# Miscellaneous                                                               #
###############################################################################

# Affinity software for photo/vector editing
brew install --cask affinity-photo
brew install --cask affinity-designer
brew install --cask affinity-publisher

# Tab switching software
brew install --cask alt-tab

# Uninstall software
brew install --cask pearcleaner

# Window management
brew install --cask tiles

# Screenshot and annotation software
brew install --cask flameshot

# Personal equipment software
brew install --cask garmin-express
# Gopro webcam software

# Menu bar related software
brew install --cask itsycal
brew install --cask xbar

# Link the plugin directory
rm -f $HOME/Library/Application\ Support/xbar/plugins && ln -s "$DOTFILES"/xbar/plugins $HOME/Library/Application\ Support/xbar/plugins

# Kotlin scripting
brew install kscripting/tap/kscript

# Install automake
brew install automake

# Install fzf for fuzzy search
brew install fzf

# Prevent sleeping
brew install --cask keepingyouawake

# Install grep
brew install grep

# Install watch to monitor the file/output changes
brew install watch

# Install jq for JSON parsing
brew install jq

# Install yq for YAML parsing like jq
brew install yq

# Install tree for directory structure
brew install tree

# Archive software
brew install --cask keka

# Note taking apps
brew install --cask logseq
brew install --cask miro

# Video related software
brew install --cask open-video-downloader
brew install --cask openshot-video-editor
brew install --cask vlc

# For back up
brew install --cask resilio-sync

# Virtual machine
brew install --cask utm

# Communication tools
brew install --cask viber
