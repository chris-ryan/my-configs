# my-configs
Configs I use on macOS/Linux. Github, Neovim, Ghostty, Rstudio, Zed

# Installation
```sh
git clone git@github.com:chris-ryan/my-configs.git ~/.config
```

## Git
By default, git will include parameters in .config/git/config as global config parameters the same way it does with ~/.gitconfig.
I've put my desired global git configuration settings in .config/git/config with the exception of the user.name and user.email settings which I've kept in ~/.gitconfig to keep this repo generic.

You can confirm which files are being loaded with:
```bash
git config --list --show-origin --show-scope
```
