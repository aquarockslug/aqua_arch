yay -S --noconfirm - < package_list.txt
go install github.com/maaslalani/nap@main
git clone https://github.com/PlankCipher/kabmat.git
cd kabmat
make
sudo make install
