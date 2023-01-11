# Neovim from scratch

## Try out this config

Make sure to remove or move your current `nvim` directory

```
git clone https://github.com/d29107d/dotfile ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed 

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

## Install font
```
# Nerd Fonts for your IDE
# https://www.nerdfonts.com/font-downloads

brew tap homebrew/cask-fonts && brew install --cask font-3270-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-fira-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-inconsolata-go-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-inconsolata-lgc-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-inconsolata-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-monofur-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-overpass-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-ubuntu-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-agave-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-arimo-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-anonymice-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-aurulent-sans-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-bigblue-terminal-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-bitstream-vera-sans-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-blex-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-caskaydia-cove-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-code-new-roman-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-cousine-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-daddy-time-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-dejavu-sans-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-droid-sans-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-fantasque-sans-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-fira-code-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-go-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-gohufont-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-hasklug-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-heavy-data-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-hurmit-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-im-writing-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-iosevka-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-jetbrains-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-lekton-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-liberation-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-meslo-lg-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-monoid-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-mononoki-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-mplus-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-noto-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-open-dyslexic-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-profont-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-proggy-clean-tt-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-roboto-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-sauce-code-pro-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-shure-tech-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-space-mono-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-terminess-ttf-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-tinos-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-ubuntu-nerd-font
brew tap homebrew/cask-fonts && brew install --cask font-victor-mono-nerd-font
```


each video will be associated with a branch so checkout the one you are interested in

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
