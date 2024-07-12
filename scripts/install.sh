AQUA_ARCH="$HOME/aqua_arch"
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
sudo pacman -Syu
sudo pacman -S --noconfirm - < package_list.txt

sudo pacman -S zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

ln -s $AQUA_ARCH/dracula/zsh/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme 
ln -s $AQUA_ARCH/aqua_nvim $HOME/.config/nvim
ln -s $AQUA_ARCH/zshrc $HOME/.zshrc

nvim -c PlugInstall
