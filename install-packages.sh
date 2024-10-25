!#/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -- -y

sudo pacman -S pacman-contrib blueman tmux zsh bat pulsemixer exa dust fd procs sd htop ripgrep zoxide zip unzip wget neovim xsel python3 python-pip ttf-font-awesome git-delta thunar tumbler xdg-user-dirs tidy ranger gnome-disk-utility --noconfirm

mkdir ~/.config

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git /tmp/nerd-fonts

cd /tmp/nerd-fonts

./install.sh

curl -sS https://starship.rs/install.sh | sh

xdg-user-dirs-update

cargo install ytop

cd ~

ln -s ~/dotfiles/.tmux.conf ~/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

chsh -s /bin/zsh

cd ~/.config

ln -s ~/dotfiles/lazygit

ln -s ~/dotfiles/starship.toml

cd ~

ln -s ~/dotfiles/.zshrc

mkdir ~/.zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java

sdk install maven

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source ~/.zshrc

nvm install node

cd ~/.config

ln -s ~/dotfiles/nvim

npm i -g neovim

pip install pynvim

sudo npm i -g prettier

sudo pip install black

sudo pip install flake8

# git clone https://github.com/microsoft/java-debug.git
#
# cd ~/dotfiles/nvim/java-debug
#
# ./mvnw clean install
#
# git clone https://github.com/microsoft/vscode-java-test.git
#
# cd ~/dotfiles/nvim/vscode-java-test
#
# npm install
#
# npm run build-plugin

cargo install stylua

paru -S brave-bin visual-studio-code-bin megasync-bin nautilus-megasync google-java-format wps-office postman-bin --noconfirm
