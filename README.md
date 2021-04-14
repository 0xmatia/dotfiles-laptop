# dotfiles
It's time to manage 'em properly

## How to?

I followed [this](https://dev.to/nimai/yet-another-guide-on-backing-up-dotfiles-3be6) to learn how to manage my dot files.

## Import dotfiles

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config remote add origin https://github.com/JavaMatia/dotfiles.git
config pull origin main
```
