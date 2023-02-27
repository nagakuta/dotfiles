#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
  echo "Not macOS!"
  exit 1
fi

# Dock
defaults write com.apple.dock "autohide" -bool true
defaults write com.apple.dock "expose-group-apps" -bool true
defaults write com.apple.dock "minimize-to-application" -bool true
defaults write com.apple.dock "orientation" -string left
defaults write com.apple.dock "show-recents" -bool false
defaults write com.apple.dock "showAppExposeGestureEnabled" -bool true
defaults write com.apple.dock "static-only" -bool true
defaults write com.apple.dock "autohide-delay" -float 0

# Screen Capture
mkdir -p $HOME/Pictures/Screenshots
defaults write com.apple.screencapture "disable-shadow" -bool true
defaults write com.apple.screencapture "location" -string $HOME/Pictures/Screenshots

# Finder
defaults write com.apple.finder "FXEnableRemoveFromICloudDriveWarning" -bool false
defaults write com.apple.finder "NewWindowTarget" -string PfHm
defaults write com.apple.finder "NewWindowTargetdefaultsPath" -string file:///Users/nagakuta/
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool false
defaults write com.apple.finder "ShowRecentTags" -bool false
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool false
defaults write com.apple.finder "WarnOnEmptyTrash" -bool true
defaults write com.apple.finder "QuitMenuItem" -bool true
defaults write com.apple.finder "AppleShowAllFiles" -bool true
defaults write com.apple.finder "ShowPathbar" -bool true
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool true
defaults write com.apple.finder "PathBarRootAtHome" -bool true
defaults write com.apple.finder "_FXShowPosixPathInTitle" -bool true

# Global
defaults write NSGlobalDomain "AppleActionOnDoubleClick" -string Minimize
defaults write NSGlobalDomain "AppleEnableSwipeNavigateWithScrolls" -bool true
defaults write NSGlobalDomain "AppleInterfaceStyle" -string Dark
defaults write NSGlobalDomain "AppleReduceDesktopTinting" -bool true
defaults write NSGlobalDomain "AppleScrollerPagingBehavior" -int 1
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool true
defaults write NSGlobalDomain "AppleShowScrollBars" -string WhenScrolling
defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool true
defaults write NSGlobalDomain "AppleWindowTabbingMode" -string always
defaults write NSGlobalDomain "InitialKeyRepeat" -int 15
defaults write NSGlobalDomain "KeyRepeat" -int 2
defaults write NSGlobalDomain "NSCloseAlwaysConfirmsChanges" -bool true
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int 1
defaults write NSGlobalDomain "com.apple.trackpad.forceClick" -bool false
defaults write NSGlobalDomain "com.apple.trackpad.scaling" -int 3

# Text Edit
defaults write com.apple.TextEdit "RichText" -bool false

# Dashboard
defaults write com.apple.dashboard "mcx-disabled" -bool true

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad "ActuationStrength" -int 1
defaults write com.apple.AppleMultitouchTrackpad "Clicking" -bool true
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerHorizSwipeGesture" -int 0
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerTapGesture" -int 2
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerVertSwipeGesture" -int 0
defaults write com.apple.AppleMultitouchTrackpad "TrackpadTwoFingerFromRightEdgeSwipeGesture" -int 0

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad "Clicking" -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad "TrackpadThreeFingerHorizSwipeGesture" -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad "TrackpadThreeFingerTapGesture" -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad "TrackpadThreeFingerVertSwipeGesture" -int 0
defaults write com.apple.driver.AppleBluetoothMulthtouch.trackpad "TrackpadTwoFingerFromRightEdgeSwipeGesture" -int 0

# Siri
defaults write com.apple.Siri "StatusMenuVisible" -bool false

# Window Manager
defaults write com.apple.WindowManager "AppWindowGroupingBehavior" -bool true
defaults write com.apple.WindowManager "AutoHide" -bool true
defaults write com.apple.WindowManager "GloballyEnabled" -bool true
defaults write com.apple.WindowManager "GloballyEnabledEver" -bool true
defaults write com.apple.WindowManager "HideDesktop" -bool true

for app in "Dock" "Finder" "SystemUIServer"; do
  killall "${app}" &> /dev/null
done
