# Matt's Mac Programming Setup

## Install developer tools

```sh
xcode-select --install
```

## Clone this repository

## Install FiraCode

https://github.com/tonsky/FiraCode

> Unzip and double-click on each font in the tff directory to install them all

## Install iTerm2

https://iterm2.com/

## Configure iTerm2

1. Go to iTerm2 Preferences -> General -> Preferences, check "Load preferences from a custom folder or URL", and Browse to the `com.googlecode.iterm2.plist` in this repo. Don't copy the file first. Just browse to this actual repository on your computer. Set "Save changes" to "When Quitting".

## Install nvm

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

> https://github.com/nvm-sh/nvm

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

### Apply configuration

Overwrite `~/.zshrc` with `./.zshrc` in this repo 

## Install fzf

```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```

1. To the question, "Do you want to enable fuzzy auto-completion", answer "y".
1. To the question, "Do you want to enable key bindings", answer "y".
1. To the question, "Do you want ot update your shell coinfiguration files?", answer "n" because the fzf configuration is already present in the `~/.zshrc` you copied.

## Install VSCode

https://code.visualstudio.com/download

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
