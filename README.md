# Welcome to the /home of @mschlr

This repository include some of my _dotfiles_.


![Terminal Screenshot](resources/pics/terminal.png)


## Tracking of Configuration Files

For file-tracking I use the set-up described by StreakyCobra on 
[Hacker News](https://news.ycombinator.com/item?id=11071754).

## Explanation of the `dotgit`-method

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
dotgit commit -m "initial commit"
dotgit push
```

3. For fetching the configuration files from the repository on a new machine
(migration of the setup), one needs to define the dotgit alias beforehand as 
such:

```bash
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotgit/ --work-tree=$HOME'
dotgit config status.showUntrackedFiles no
```

When done. The dotfiles can be cloned into a bare repository referring to the
`.dotgit` directory.

```bash
git clone --bare <git-repo-url> $HOME/.dotgit
dotgit checkout
```

Config files tracking without additional tools. Just `git`!

---

Tasks:
- [ ] Add more configuration files
- [ ] Add automated script for fetching and backups
