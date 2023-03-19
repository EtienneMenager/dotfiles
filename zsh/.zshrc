# If you come from bash you might have to change your $PATH.
ZSH_DISABLE_COMPFIX=true
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

plugins=(git ssh-agent zsh-vi-mode)
# plugins=(git ssh-agent)
zstyle :omz:plugins:ssh-agent lazy yes
source $ZSH/oh-my-zsh.sh
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# bindkey -v # does the same as zsh-vi-mode but with less functionalities
zvm_after_init_commands+=("bindkey '^[[A' up-line-or-search" "bindkey '^[[B' down-line-or-search")

# lazygit -> shell changes directory when change repo in lazygit
# lg()
# {
#     export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir
#
#     lazygit "$@"
#
#     if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
#             cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
#             rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
#     fi
# }

# I guess this is usefull ? Can't remember
# export PATH=/usr/local/bin:$PATH
# export PATH=$HOME/installed_libs/bin:$PATH
# export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
# export PYTHONPATH=/usr/local/lib/python3.8/site-packages:$PYTHONPATH
# export CMAKE_PREFIX_PATH=/usr/local:$CMAKE_PREFIX_PATH

# Picom path
# export PATH=$HOME/pkgs_source/picom/build/src:$PATH

# Doom Emacs path
# export PATH=$HOME/.emacs.d/bin:$PATH

# Zotero path
# export PATH=$HOME/libs/zotero:$PATH
# export PATH=$HOME/.local/share/applications:$PATH
# export PATH=$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH

# -------- Aliases --------
alias audio="alsamixer"
alias vi="vim"
alias vim="nvim"
alias picom="picom --config ~/.config/picom.conf -b"
alias tat="tmux attach -t"
alias tls="tmux ls"
alias tname="tmux rename-window -t"
alias ipi="ipython -i"
alias meshcat="chromium http://127.0.0.1:7000/static/"
alias lum05="xrandr --output eDP-1 --brightness 0.5"
alias lum10="xrandr --output eDP-1 --brightness 1.0"
alias lum15="xrandr --output eDP-1 --brightness 1.5"
alias ca="conda activate"
alias ma="mamba activate"
# alias open="xdg-open"
alias orga="cd ~/orga"
alias cl="clear"
alias del_emacs="bash ~/dotfiles/emacs/.config/emacs/del_config.sh"
alias gfix='git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"'
alias lg="lazygit"
# . "$HOME/.cargo/env"
alias cmaker='cmake -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX -DCMAKE_BUILD_TYPE=Release -DCMAKE_SYSTEM_PREFIX_PATH=$CONDA_PREFIX -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_CXX_COMPILER_LAUNCHER=ccache -DCMAKE_C_COMPILER_LAUNCHER=ccache'
alias cmaked='cmake -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX -DCMAKE_BUILD_TYPE=Debug -DCMAKE_SYSTEM_PREFIX_PATH=$CONDA_PREFIX -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_CXX_COMPILER_LAUNCHER=ccache -DCMAKE_C_COMPILER_LAUNCHER=ccache'
alias jupytervim="pip install jupyterlab-vim jupyterlab-vimrc"
export VISUAL=nvim;
export EDITOR=nvim;
export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/louis/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/louis/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/louis/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/louis/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/louis/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/Users/louis/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

export CMAKE_COLOR_DIAGNOSTICS=1
export CMAKE_EXPORT_COMPILE_COMMANDS=1
# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# Safe rm
alias rm="rm -i"

# make always parallel
alias make="make -s"
