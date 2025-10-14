# SlimSlickner's Home Directory
Relevant git-related setup from `$HOME` on a Mac.

The git control was taken from [Atlassian's Dotfile Guide](https://www.atlassian.com/git/tutorials/dotfiles), setup using the following command.
```zsh
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
```

This setup aliases `config` to `git`, so files can be added and committed using `config add .zshrc`, `config commit -m "init commit"`, etc.

I currently use the built in MacOS Terminal with this theme: https://github.com/lysyi3m/macos-terminal-themes?tab=readme-ov-file#gruvbox-download
