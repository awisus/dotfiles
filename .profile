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

# set chrome executable to chromium if it exists
if [ -f "/usr/bin/chromium-browser" ] ; then
    export CHROME_EXECUTABLE=/usr/bin/chromium-browser
fi

# homebrew
if [[ $OSTYPE == 'darwin'* ]] ; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# android
export ANDROID_HOME="$HOME/android"
export ANDROID_SDK_ROOT="$ANDROID_HOME/sdk"

# dart
export DART_SDK="$HOME/flutter/bin/cache/dart-sdk"
export PATH="$PATH:$DART_SDK/bin"

# flutter
export PATH="$PATH:$HOME/flutter/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
