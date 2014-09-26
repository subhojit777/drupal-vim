# Vim plugins and settings for Drupal development

Just another set of vim plugins and settings that will ease writing Drupal code
in vim. The settings will work in graphical vim
([GVim](https://apps.ubuntu.com/cat/applications/vim-gnome/)) as well and I recommend using GVim.

#### Installation
```
1. cd
2. mv ~/.vim ~/.vim-bak // If you have vim settings. Else, proceed to next step
3. git clone git@github.com:subhojit777/drupal-vim.git ~/.vim
4. git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
5. ln -s ~/.vim/vimrc ~/.vimrc
6. ln -s ~/.vim/gvimrc ~/.gvimrc // If you have graphical vim installed
7. vim +BundleInstall +qall
```

And you are good to go! Enjoy vim :)

**P.S. Please create issues [here](https://github.com/subhojit777/drupal-vim/issues/new) if you are having any problem during installation.**
