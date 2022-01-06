# ---
# Update all packages
# ---

sudo apt update && sudo apt upgrade

# ---
# Install Homebrew Package Manager
# ---

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ---
# Add Hombrew to PATH
# ---

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ---
# Install Homebrew Dependencies
# ---

sudo apt-get install build-essential

# ---
# Source Homebrew
# ---

source ~/.profile

# ---
# Install GCC (recommended)
# ---

brew install gcc

# ---
# Install packages using Homebrew
# ---

brew install git
brew install zsh
brew install vim
brew install ripgrep
brew install bat
brew install antibody
brew install stow
brew install yarn
brew install bpytop
brew install libreoffice
brew install gimp
brew install inkscape
brew install chrome-browser

brew install xclip


# ---
# Only For MacOS
# ---

# brew install --cask kitty

# ---
# Add ZSH to allowed login shells
# ---

command -v zsh | sudo tee -a /etc/shells

# ---
# Make ZSH defualt shell
# ---
sudo chsh -s $(which zsh) $USER

# --
# Open new terminal window
# ---

kitty

# ---
# Link .dotfiles to Home directory
# ---

cd ~/.dotfiles 
stow .

