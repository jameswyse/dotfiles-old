
# ------------------------------------------------------------------------------
# General
# ------------------------------------------------------------------------------

# Disable the dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Disable startup sound
sudo nvram SystemAudioVolume=%80

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

# Set the top right hotspot to "Sleep Display"
defaults write com.apple.dock wvous-tr-corner -int 10

# Set the bottom left hotspot to "Show Desktop"
defaults write com.apple.dock wvous-bl-corner -int 4

# Allow apps downloaded from "Anywhere"
sudo spctl --master-disable

# ------------------------------------------------------------------------------
# Finder
# ------------------------------------------------------------------------------

# Show the status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show the tab bar
defaults write com.apple.finder ShowTabView -bool true

# Set the default view mode to "List"
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Un-hide ~/Library
chflags nohidden ~/Library

# Remove device icons from the desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Use AirDrop over every interface
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Enable text selection in QuickLook
defaults write com.apple.finder QLEnableTextSelection -bool true

# Prevent apps from saving to iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false


# ------------------------------------------------------------------------------
# Other Apps
# ------------------------------------------------------------------------------

# Safari: Hide bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Safari: Enable dev tools
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Chrome: Disable 2-finger swipe navigation
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool false


# Preview: Don't restore open windows on start
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false

# Quicktime: Don't restore open windows on start
defaults write com.apple.QuickTimePlayerX NSQuitAlwaysKeepsWindows -bool false
