# dotfiles
It's time to manage 'em properly

## How to?

I followed [this](https://dev.to/nimai/yet-another-guide-on-backing-up-dotfiles-3be6) to learn how to manage my dot files.

## Import dotfiles

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config remote add origin https://github.com/syb3rman/dotfiles.git
config pull origin main
```

## Required packages (not complete)

> TODO: Create a bash scrips to install everything

* polybar
* i3
* polybar
* nvim
* nvim-packer-git
* fish-indent
* zsh
* oh-my-zsh
* starship
* exa
* bat  
* fd
* rofi
* xsel
* xclip
* arcolinux-logout
* betterlockscreen
