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
fi

# docker
if [ -S "$HOME/.colima/docker.sock" ] ; then
    export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
    export DOCKER_HOST="unix://$HOME/.colima/default/docker.sock"
fi

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# android
export ANDROID_HOME="$HOME/android/sdk"

# dart
export DART_SDK="$HOME/flutter/bin/cache/dart-sdk"
export PATH="$PATH:$DART_SDK/bin"

# flutter
export PATH="$PATH:$HOME/flutter/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
