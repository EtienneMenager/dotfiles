## My config file for fresh linux install

Included in config files/Needed to install:
- i3wm
    - i3-gaps see doc for install: https://github.com/Airblader/i3/wiki/Installation
        - There are ppa, pull them i.e `sudo add-apt-repository -y ppa:regolith-linux/stable`
        - Then `sudo apt-get update` && `sudo apt-get install i3-gaps`
    - Check the config file for installs/modification.
        - For example, touchpad settings are modified / picom is used for gui stuff
        - Brigthness is modified etc
        - Touchpad may not work as expected: `xinput` to list devices. You'll find the id of the touchpad.
        - `xinput list-props <touchpad-id>`. This will give you in parenthesis the ids of parameters you want to modify. 
    - Polybar needs to be installed: https://github.com/polybar/polybar
    - Lots of polybar themes: https://github.com/adi1090x/polybar-themes#shades
        - Add systray icon by replacing in config.ini
    - You can also switch to using i3bar, comment/decomment in i3/config

- zsh & oh-my-zsh
    - Go to line after prompt: https://github.com/agnoster/agnoster-zsh-theme/issues/65

- tmux
    - Plugins such as `tmux resurect` need https://github.com/tmux-plugins/tpm

- alacritty
    - picom for transparency. Install from source, as su: https://github.com/yshui/picom

- neovim
    - Install from source: https://github.com/neovim/neovim
    - Don't install from conda env, even base. Simply conda deactivate as much as possible
    - `sudo apt-get install xclip` for clipboard + `set clipboard+=unamedplus`
    - `:PlugInstall` and `:CocInstall` are your friends
    - For coc python:
        - Install nodejs && npm: `sudo pacman -S nodejs npm`
        - Need to create a `.config/nvim/coc-settings.json`
        - Need to say: `"python.pythonPath": "python"`
        - This `python` will be the one used by `which python`. So make sure it uses the python from env you want.
    - DEPRECATED: For coc c++:
        - Need a language server such as `clangd`
        - Install clangd, then `:CocInstall coc-clangd`
        - `:CocCommand clandg.install`
        - Other Coc things to install:
            - `coc-diagnostic`
            - `coc-jedi`
            - `coc-clangd`
            - `coc-explorer`
    - LSP (wether native or Coc)
        - C++:
            - Need to have `clangd`
                - Install `clang` or `clangd` or `clang-tools` can't remember...
            - In a project, go in `project/build_folder_name` folder than run `cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..` to export the
                config in a `compile_commands.json`. It will export the config of the generated cmake files for this build folder.
                Then `ln -s ~/path_to_project/build_folder_name/compile_commands.json ~/path_to_project`
        - Python: in a new conda env, install:
            - `neovim`
            - `jedi-language-server` with conda/pip or `pyright` with npm
            - `autopep8` for formatting
            - neovim will use python's lsp on the conda env. Cool.

Git clone this repo in `$HOME` folder then simply dot a `ln -sf $HOME/dotfiles/file-to-link $HOME/location-path-to-link`.</br>
It should be is as simple as doing a `ln -sf $HOME/dotfiles/* $HOME/` as the structure in `dotfiles` is the same as the structure needed for config files to work in `$HOME`.

# NOTES / FIXES
How to use Coc clangd:
    - First build your project `mkdir build && cd build && cmake .. (+ cmake flags like where conda env path is etc) && ccmake. (to check compilation flags) make install`
    - Then `cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..` will create a `compile_commands.json` which clangd will use to provide completion.

Treesitter error (lots of lines underlined):
    - TSError is assigned to a color/behavior which is dependent only on the colorscheme used
    - We pick a colorscheme compatible with TS like gruvbox but in gruvbox, TSError underlines stuff which is MEGA annoying.
    - So go there: `vim ~/.vim/plugged/gruvbox.nvim/lua/gruvbox/plugins/highlights.lua` and delete line where there is TSError

Fresh ArchLinux install:
- Normally if you have the /home/user clone with neovim and anaconda installed locally, there is nothing to do. Some packages are installed for the system though, so reinstall them:
    - Nodejs & npm (for neovim-coc to work)
    - slack, firefox, zoom, feh, xorg-xinput, picom 
    - for bluetooth: bluez-utils
    - alsa, pulseaudio, pulseaudio-alsa (to link them), pulseaudio-bluetooth, pavucontrol (gtk to control pulseaudio)
    - For alsa, needed to unmute the different channels otherwise no sound
    - yay for AUR packages

