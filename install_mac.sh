#!/bin/bash

# Update Homebrew and upgrade installed packages
brew update
brew upgrade

# Install Homebrew if not present
if ! which brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install environment tools and languages
brew install zsh zsh-completions kubectx gh shfmt go emacs nvm

cp .zsh_plugins.txt ~/.zsh_plugins.txt

# Install powerlevel10k and nerdfonts
brew install romkatv/powerlevel10k/powerlevel10k
brew install --cask font-meslo-lg-nerd-font
brew install --cask iterm2
brew install --cask visual-studio-code

# Copy VS Code settings
mkdir -p ~/Library/Application\ Support/Code/User
cp vscode/* ~/Library/Application\ Support/Code/User/

# Set default shell to zsh
zsh --version

# Merge our zshrc contents if one already exists, otherwise just copy it over
if [ -f ~/.zshrc ]; then
    echo "=== Merging .zshrc Files (MIGHT REQUIRE MANUAL CLEANUP!) ==="
    cat .zshrc | cat - ~/.zshrc > temp && rm ~/.zshrc && mv temp ~/.zshrc
else
    echo "=== Copying .zshrc File ==="
    cp .zshrc ~/.zshrc
fi

# git settings/aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.com commit
git config --global alias.st status
git config --global credential.helper 'cache --timeout 604800'

echo "!! Terminal Apps need 'MesloLGM Nerd Font' in order to properly display Powerline Fonts"
echo "!! If you switched to powerlevel10k, run 'p10k configure' to set up your prompt"
