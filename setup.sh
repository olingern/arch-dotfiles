echo "=== Setting up yay ==="
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si

echo "Setting up system utils"
yay -S alsa-utils feh xorg-backlight alacritty rofi picom i3status i3lock-fancy redshift wmctrl libinput-gestures

echo "Setting up fonts"
yay -S ttf-monaco nerd-fonts-complete ttf-mac-fonts
fc-cache -f -v

echo "Setting up development utils"
yay -S visual-studio-code-bin docker curl wget insomnia openssh

echo "=== Starting and setting up docker ==="
systemctl start docker
systemctl enable docker

echo "=== Setting up nvm ==="
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo "=== Setting up Go ==="
## TODO: Automate latest version
curl -sf https://dl.google.com/go/go1.14.1.linux-386.tar.gz --output go1.14.1.linux-386.tar.gz 
tar -C /usr/local -xzf go1.14.1.linux-386.tar.gz 

echo "=== Setting up rvm ==="
curl -sSL https://get.rvm.io | bash -s stable

echo "=== Setting up vim ==="
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo ""
echo "Post install reminders:"
echo " - set volume in alsa-utils"
echo " - set latest ruby, node versions"
echo " - generate ssh key and add to Github: ssh-keygen -t rsa -b 4096"