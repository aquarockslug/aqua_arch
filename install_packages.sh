AQUA_ARCH="$HOME/aqua_arch"
mv zshrc ~/.zshrc

ln -s $AQUA_ARCH/dracula/zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme 

yay -S --noconfirm - < package_list.txt
go install github.com/maaslalani/nap@main
