# Vim plugins and settings for Drupal development

Just another set of vim plugins and settings that will ease writing Drupal code
in vim. The settings will work in graphical vim
([GVim](https://apps.ubuntu.com/cat/applications/vim-gnome/)) as well and I recommend using GVim.

### Installation

```sh
cd ~
cp ~/.vimrc ~/.vimrc.backup
mv ~/.vim ~/.vim-bak // If you have vim settings. Else, proceed to next step
git clone git@github.com:subhojit777/drupal-vim.git ~/.vim
git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/.vim/vimrc ~/.vimrc
cp ~/.vim/gvimrc ~/.gvimrc // If you have graphical vim installed
mkdir ~/.vimsessions
mkdir ~/vimtmp
sudo apt-get install exuberant-ctags // Install exuberant-ctags on Ubuntu/Debian
`brew install ctags` // Install exuberant-ctags on OSX
vim +BundleInstall +qall
```

And you are good to go! Enjoy vim :)

**P.S. Please create issues [here](https://github.com/subhojit777/drupal-vim/issues/new) if you are having any problem during installation.**
