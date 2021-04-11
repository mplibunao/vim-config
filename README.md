### My neovim config

### Requirements

- neovim
- ripgrep
- lazydocker
- pbcopy/xclip or any paste stuff
- pynvim
- nodevim
- ranger

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

`:healthcheck`

- Install pynvim

```
sudo apt install python3-pip
pip3 install pynvim
```

- Install node neovim

`npm i -g noevim`
