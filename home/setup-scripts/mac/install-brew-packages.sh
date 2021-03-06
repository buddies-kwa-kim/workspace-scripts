#!/usr/bin/env bash

#### Brew installation ####
print_sep "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# adding brew to path for the session
eval "$(/opt/homebrew/bin/brew shellenv)"


#### Brew packages ####
print_sep "Installing brew packages"
brew tap homebrew/cask-fonts
brew update

## -------------Terminal tools------------- ##
#### linux commands ####
# GNU core utilities (those that come with OS X are outdated) https://wiki.debian.org/coreutils
brew install coreutils
# https://joeyh.name/code/moreutils/
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`
brew install gnu-sed
# ssl certs
brew install openssl

#### Config manager ####
# default app to open files
brew install duti
# Keep dotfiles and config files in github for consistency, homeshick symlinks all files from the repo
brew install homeshick

#### zsh on steroids ####

# Unix shell that is built on top of bash (the default shell for macOS) with additional features.
brew install zsh
# Plugins manager for zsh, called bundles, antigen config is ~/.zsh/universal-antigen.zsh
brew install antigen
# sed for JSON, command-line JSON processor
brew install jq
# Command-line JSON processing tool
brew install fx
# BetterZip can create archives with these formats: ZIP, DMG, TAR, TGZ, TBZ, TXZ, TZ, Zstandard, Brotli, 7-ZIP, XAR
brew install betterzip
# retrieving files using HTTP, HTTPS, FTP and FTPS
brew install wget
# show directory tree
brew install tree
# replacement for ls
brew install exa
# better cat, Syntax highlighting, git-aware
brew install bat
# recursively searches the current directory for a regex pattern
brew install ripgrep
# interactive filter that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc.
brew install fzf
# navigate through directories more efficiently
brew install autojump
# Programmatically correct mistyped console commands
brew install thefuck

#### git ####
brew install git
# github cli https://cli.github.com/manual/
brew install gh
# Improved colors for the highlighted bits for git diff
brew install diff-so-fancy

#### cloud ####
brew install awscli
# brew install azure-cli
brew install terraform
brew install docker
brew install terragrunt
brew install kubectl
brew install kubectx
brew install helm

#### dev ####
brew install pyenv
# pyenv dependencies
brew install openssl readline sqlite3 xz zlib
brew install nvm
brew install typescript

#### theme ####
brew install pure

## -------------GRAPHICAL APPS------------- ##

#### Security ####
# Inspect macOS Installer Packages
#brew install --cask suspicious-package

##### Productivity #####
# Changes color of your computer's display adapt to the time of day, warm at night and like sunlight during the day.
brew install --cask flux
# prevent mac to lock, it adds an icon in the right side of the menubar for configuring the time before sleep
# brew install --cask caffeine
# increase productivity, better search bar, hotkeys, keywords
# brew install --cask alfred
# resize windows
# brew install --cask rectangle
brew install --cask google-chrome
# brew install --cask firefox
# create presentation with markdown
# brew install --cask deckset

##### dev #####
brew reinstall --cask docker
brew install --cask visual-studio-code
# better terminal
brew install --cask iterm2
# Nerd Fonts takes popular programming fonts and adds a bunch of Glyphs and icons
brew install --cask font-hack-nerd-font
# compare files and folders
# brew install --cask beyond-compare
# schedule tasks, manage files, save documents, set reminders, keep agendas, and organize their work
# brew install --cask notion
# markdown editor
# brew install --cask macdown
# GUI git client
# brew install --cask sourcetree
# postgres database client
# brew install --cask postico

##### Image/Video #####
# display thumbnails, static previews, cover art and metadata for most types of video files
# brew install --cask qlvideo
# alternative to photoshop
# brew install --cask gimp
# displays the dimensions, DPI and file size of an image in the title bar
# brew install --cask qlimagesize
# screencasting and video editing software
# brew install --cask screenflow
# Saves disk space & bandwidth by compressing images without losing quality.
# brew install --cask ImageOptim

##### conferencing #####
# brew install --cask zoom
brew install --cask microsoft-teams
# disable notifications when screensharing
# brew install --cask muzzle

##### messaging #####
brew install --cask slack
# brew install --cask telegram

##### media player #####
# brew install --cask spotify
# video player
# brew install --cask vlc

brew cleanup