AQUA_ARCH="$HOME/aqua_arch"
sudo pacman -Syu
sudo pacman -S --noconfirm - < package_list.txt
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
ln -s $AQUA_ARCH/dracula/zsh/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme 
ln -s $AQUA_ARCH/aqua_nvim $HOME/.config/nvim
ln -s $AQUA_ARCH/zshrc $HOME/.zshrc
