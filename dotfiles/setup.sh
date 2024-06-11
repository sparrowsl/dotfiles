# Setup file with scripts to setup my system.


# Needed for all installers (update system)
sudo apt update -y
sudo apt install -y curl unzip xclip mpv wget tar fzf ripgrep btop fd flameshop peek evolution gthumb guake



# Install git
sudo add-apt-repository ppa:git-core/ppa 
sudo apt update -y 
sudo apt install -y git

# Install NPM
sudo apt install npm
# Update NPM version
sudo npm install -g npm@latest
# Install N (node version manager)
sudo npm install -g n@latest
# Install node LTS
sudo n lts
# Remove old node versions
sudo n prune



# Download latest neovim and setup
wget -c github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xvzf nvim-linux64.tar.gz
# Rename directory
mv nvim-linux64.tar.gz nvim/
# Delete old nvim directory
sudo rm -rf /usr/bin/nvim/
# Move current nvim to bin
sudo mv ./nvim /usr/bin/

# Install VSCode
cd ~/Downloads
wget -O code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo apt install -y ./code.deb
rm code.deb
cd -


# Install Zellij
cd ~/Downloads
wget -O zellij.tar.gz "https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz"
tar -xf zellij.tar.gz zellij
sudo install zellij /usr/local/bin/
rm zellij.tar.gz
cd -
