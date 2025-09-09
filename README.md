# Matt's Mac Programming Setup

## Immediately show/hide the MacOS Dock

```sh
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock
```

## Install developer tools

```sh
xcode-select --install
```

## Configure git

```sh
git config --global user.name "Matt Dean"
git config --global user.email "mdean400@gmail.com"
git config --global pull.rebase false
git config --global push.autoSetupRemote true
```

## Install Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

> https://brew.sh/

## Clone this repository

## Install Monaspace Font

https://github.com/githubnext/monaspace

```sh
brew tap homebrew/cask-fonts
brew install font-monaspace
```

## Install iTerm2

https://iterm2.com/

## Configure iTerm2

1. Go to iTerm2 Preferences -> General -> Preferences, check "Load preferences from a custom folder or URL", and Browse to the `com.googlecode.iterm2.plist` in this repo. Don't copy the file first. Just browse to this actual repository on your computer. Set "Save changes" to "When Quitting".

## Configure zsh

### Install oh-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

> https://ohmyz.sh/#install

### Install powerlevel10k

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

> https://github.com/romkatv/powerlevel10k/blob/master/README.md#oh-my-zsh

### Configure powerlevel10k

Copy `./.p10k.zsh` in this repo to `~/.p10k.zsh`

### Install zsh-syntax-highlighting

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Install zsh-autosuggestions

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Update .zshrc

Overwrite `~/.zshrc` with `./.zshrc` in this repo

## Install fzf

```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```

1. To the question, "Do you want to enable fuzzy auto-completion", answer "y".
1. To the question, "Do you want to enable key bindings", answer "y".
1. To the question, "Do you want ot update your shell configuration files?", answer "n" because the fzf configuration is already present in the `~/.zshrc` you copied.

## Quit iTerm2 and reopen

## Install pkgx and pkgm

```sh
brew install pkgx || curl https://pkgx.sh | sh
brew install pkgxdev/made/pkgm || curl https://pkgx.sh | sh
```

## Set up Docker (Colima depends on docker executable in PATH, so we'll fully install it using pkgm)

```sh
sudo pkgm install docker
```

## Install docker compose as a command and as a plugin

> This will cause both `docker-compose` and `docker compose` to work.

```sh
sudo pkgm install docker-compose
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
ln $(which docker-compose) $DOCKER_CONFIG/cli-plugins/
```

## Start Colima VM

```sh
pk colima start --vm-type=vz --vz-rosetta --cpu 1 --memory 1 --disk 100
```

## Install VSCode

https://code.visualstudio.com/download

> If you open VSCode's integrated terminal, it might look weird. Ignore this and wait until you've updated your `settings.json` based on the instructions below.

## Configure VSCode

### Install some extensions

- streetsidesoftware.code-spell-checker
- eamodio.gitlens
- PKief.material-icon-theme
- quicktype.quicktype
- esbenp.prettier-vscode
- humao.rest-client
- zhihaocui.ts-interface-sorter
- dbaeumer.vscode-eslint

Overwrite `'~/Library/Application Support/Code/User/settings.json'` with `./settings.json` in this repo
