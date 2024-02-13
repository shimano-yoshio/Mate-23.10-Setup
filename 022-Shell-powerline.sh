# Install powerline
pip install --user git+git://github.com/powerline/powerline
# Install omf powerline plugin
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd ..
rm -fr font
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
