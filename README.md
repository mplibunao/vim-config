### My neovim config

### Requirements

- [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-package)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [lazydocker](https://github.com/jesseduffield/lazydocker/blob/master/README.md)
- pbcopy/xclip or any paste stuff
- ranger
- [lazygit](https://github.com/jesseduffield/lazygit#installation)
- [bottom](https://github.com/ClementTsang/bottom)
- [python stuff](https://docs.python-guide.org/starting/install3/osx/)
- pynvim
- nodevim

### Setup instructions

- Clone repo inside `.config` directory

`git clone https://github.com/mplibunao/vim-config.git .config/nvim` 

- Open `init.vim`

`nvim init.vim`

- Save `init.vim` to source the config

`:w`

- Install Plugs

`:PlugInstall`

- Run health check

`:checkhealth`


- Install node neovim

`npm i -g noevim` or `yarn add global neovim`

## Python stuff

- [Point python to python3](https://dev.to/malwarebo/how-to-set-python3-as-a-default-python-version-on-mac-4jjf)

```
# Check where python3 is installed first
ls -l /usr/local/bin/python*

# Create a symlink to python
ln -s -f /usr/local/bin/python3.9 usr/bin/python
```

- Install pynvim

```
sudo apt install python3-pip
pip3 install pynvim
```
