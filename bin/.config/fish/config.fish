# Fish shell
set fish_greeting

# Homebrew
set HOMEBREW_ROOT /opt/homebrew
set -x HOMEBREW_VERBOSE 1
set -x HOMEBREW_VERBOSE_USING_DOTS 1
set -x HOMEBREW_NO_ENV_HINTS 1

# Dart
set FLUTTER_WORKSPACE $HOME/Works/flutter
set -x PUB_CACHE $FLUTTER_WORKSPACE/.pub-cache
set PUB_ROOT $PUB_CACHE

# FVM
set -x FVM_HOME $FLUTTER_WORKSPACE/.fvm

# Paths
set PATH $HOMEBREW_ROOT/bin $PATH
set PATH $PUB_ROOT/bin $PATH
