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

To setup the submodules, like `fzf-tab`, do this:
```zsh
cd ~/.zsh_config/plugins/fzf-tab
git pull origin master  # or whatever branch
cd ~
git add ~/.zsh_config/plugins/fzf-tab
git commit -m "Update fzf-tab"
```

Terminal themes can be found [here](https://github.com/mbadolato/iTerm2-Color-Schemes?tab=readme-ov-file#terminal-color-schemes). Currently, I'm on Kanagawa Wave and Dragon depending on time of day.
