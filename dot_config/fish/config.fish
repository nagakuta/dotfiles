# Fish shell
set fish_greeting
if status is-login
  cd $HOME/Works
end

# Homebrew
set HOMEBREW_ROOT /opt/homebrew
set -x HOMEBREW_VERBOSE 1
set -x HOMEBREW_VERBOSE_USING_DOTS 1
set -x HOMEBREW_NO_ENV_HINTS 1
set -x HOMEBREW_CASK_OPTS "--appdir=$HOME/Applications"

# Dart
set FLUTTER_WORKSPACE $HOME/Works/flutter
set -x PUB_CACHE $FLUTTER_WORKSPACE/.pub-cache
set PUB_ROOT $PUB_CACHE

# FVM
set -x FVM_CACHE_PATH $FLUTTER_WORKSPACE/.flutter_cache

# Paths
set PATH $HOMEBREW_ROOT/bin $PATH
set PATH $PUB_ROOT/bin $PATH

