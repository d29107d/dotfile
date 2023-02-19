# Neovim from scratch

## Try out this config

Make sure to remove or move your current `nvim` directory

```
git clone https://github.com/d29107d/dotfile ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed 

## Install rg on your system 

## Install font
```
https://github.com/ryanoasis/nerd-fonts
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
- install universal-ctags
- install rg
