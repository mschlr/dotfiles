# Welcome to the /home of @mschlr

## Tracking of Configuration Files

This repository include some of my _dotfiles_.

For file-tracking I use the set-up described by StreakyCobra on 
[Hacker News](https://news.ycombinator.com/item?id=11071754).


## Explanation of the _dotgit_-method

1. Initialization of the git repository takes place in `$HOME`.

```bash
git init --bare $HOME/.dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotgit/ --work-tree=$HOME'
dotgit config status.showUntrackedFiles no
```

2. Next one would add a handful of _dotfiles_ that are of interest to track 
file changes.

```bash
dotgit status
dotgit add .vimrc .profile .tmux.conf .bash_aliases .local/include/*
dotgit commit -m "initial commit:
dotgit push
```

Tedious but works out of the box using `git`!

