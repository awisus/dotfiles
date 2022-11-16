# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# config
export XDG_CONFIG_HOME="$HOME/.config"

# set CHROME_EXECUTABLE to chromium-based browser if it exists
if [ -f "/Applications/Chromium.app/Contents/MacOS/Chromium" ] ; then
    export CHROME_EXECUTABLE="/Applications/Chromium.app/Contents/MacOS/Chromium"
elif [ -f "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser" ] ; then
    export CHROME_EXECUTABLE="/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"
elif [ -f "/usr/bin/brave-browser" ] ; then
    export CHROME_EXECUTABLE="/usr/bin/brave-browser"
elif [ -f "/usr/bin/chromium-browser" ] ; then
    export CHROME_EXECUTABLE="/usr/bin/chromium-browser"
fi

# homebrew
if [ -f "/opt/homebrew/bin/brew" ] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -f "/home/linuxbrew/.linuxbrew/bin/brew" ] ; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
if command -v jenv > /dev/null ; then
    eval "$(jenv init -)" || true
fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if command -v rbenv > /dev/null ; then
    eval "$(rbenv init -)"
fi

# android
export ANDROID_HOME="$HOME/android/sdk"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# flutter
export DART_SDK="$HOME/flutter/bin/cache/dart-sdk"
export PATH="$PATH:$DART_SDK/bin"
export PATH="$PATH:$HOME/flutter/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ] ; then
    . "$NVM_DIR/nvm.sh"
fi
if [ -s "$NVM_DIR/bash_completion" ] ; then
    . "$NVM_DIR/bash_completion"
fi

# rust
if [ -s "$HOME/.cargo/env" ] ; then
    . "$HOME/.cargo/env"
fi

# fzf
export FZF_DEFAULT_OPTS="
	--color=fg:#908caa,bg:#232136,hl:#ea9a97
	--color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97
	--color=border:#44415a,header:#3e8fb0,gutter:#232136
	--color=spinner:#f6c177,info:#9ccfd8
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

# mangohud
export MANGOHUD=1
