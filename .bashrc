# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export PATH=$PATH:/usr/local/bin/flutter/bin
export ANDROID_HOME=~/android_sdk # needed for commandline-tools
# export ANDROID_SDK_ROOT=$ANDROID_HOME
# export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin

export PATH=$PATH:/usr/local/bin/node/bin

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin # needed for apps installed using Go

export PATH=$PATH:/usr/local/nvim/bin
export PATH=$PATH:/usr/local/zig

export CHROME_EXECUTABLE="/usr/bin/opera"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

eval "$(starship init bash)"
. "$HOME/.cargo/env"
