# Fish shell
set fish_greeting

# Homebrew
set HOMEBREW_ROOT /opt/homebrew
set -x HOMEBREW_VERBOSE 1
set -x HOMEBREW_VERBOSE_USING_DOTS 1
set -x HOMEBREW_NO_ENV_HINTS 1
set -x HOMEBREW_UPDATE_REPORT_ALL_FORMULAE 1

# Paths
set PATH $HOMEBREW_ROOT/bin $PATH
