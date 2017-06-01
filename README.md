.dotfiles
===

This repository stores dotfiles I use daily on my development laptop. It has probable little to no use for you as it features very hardware specific tweaks. It currently runs on Thinkpad E470.

Currently the environment consists of:
- Archlinux
- i3
- i3-blocks
- Firefox
- Chromium
- Visual Studio Code
- IntelliJ Idea
- ZSH with oh-my-ZSH
- Terminator
- Ranger
- Thunar

# Installing

The .dotfiles setup relies on method proposed in hacker news thread: https://news.ycombinator.com/item?id=11070797

To use files you need to run the following commands:

```
git clone --separate-git-dir=$HOME/.myconf /path/to/repo $HOME/myconf-tmp
rm -r ~/myconf-tmp/
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
```