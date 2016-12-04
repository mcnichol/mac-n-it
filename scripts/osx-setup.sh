#!/usr/bin/env bash

# see http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
msg "Updating Menu Clock"
defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  h:mm:ss a'
killall SystemUIServer

msg "Dock Hidden by Defailt"
defaults write com.apple.dock autohide -bool true
killall Dock

msg "Fast Key Repeat Rate - Restart for Effects"
# fast key repeat rate, requires reboot to take effect
defaults write ~/Library/Preferences/.GlobalPreferences KeyRepeat -int 1
defaults write ~/Library/Preferences/.GlobalPreferences InitialKeyRepeat -int 15

# set finder to display full path in title bar
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

# stop Photos from opening automatically
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
#to revert use defaults -currentHost delete com.apple.ImageCapture disableHotPlug

#GlobalPreferences
#Enable multitouch trackpad auto orientation sensing (for all users)
#defaults write /Library/Preferences/com.apple.MultitouchSupport ForceAutoOrientation -boolean

#Map navigation swipe to 3 fingers (turn this off to get 4-finger navigation swipe)
#defaults write com.apple.systempreferences com.apple.preference.trackpad.3fdrag-4fNavigate -boolean-neg

#Hide Shutdown Button on Login Window:
#defaults write com.apple.loginwindow ShutDownDisabled -bool

#Hide Restart Button From Login Window:
#defaults write com.apple.loginwindow RestartDisabled -bool

#Disable Login for Hidden User ">Console"
#defaults write com.apple.loginwindow DisableConsoleAccess -bool

#Add a message to the login screen:
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Developer Setup"

#Change login screen background:
#sudo defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture "/Library/Desktop Pictures/Aqua Blue.jpg"

#Disable transparency in the menu bar and elsewhere
#Yosemite - equivalent to System Preferences > Accessibility > Display > "Reduce Transparency"
#defaults write com.apple.universalaccess reduceTransparency -bool true

#Disable Expose
#defaults write com.apple.dock mcx-expose-disabled -boolean

#In Expose, only show windows from the current space:
#defaults write com.apple.dock wvous-show-windows-in-other-spaces -bool FALSE
#killall Dock

#In Expose, show other spaces' windows (default):
#defaults delete com.apple.dock wvous-show-windows-in-other-spaces
#killall Dock

#Enable 64-bit Kernel:
#defaults write /Library/Preferences/SystemConfiguration/com.apple.Boot.plist Kernel Flags -string

#Turn off the “Application Downloaded from Internet” quarantine warning:
defaults write com.apple.LaunchServices LSQuarantine -bool NO

#Every App
#Restore the the 'Save As' menu item (Equivalent to adding a Keyboard shortcut in the System Preferences.app )
#defaults write -g NSUserKeyEquivalents -dict-add 'Save As...' '@'

#Save to disk (not to iCloud) by default
#defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

#Expand 'Save As…' dialog boxes by default
#defaults write -g NSNavPanelExpandedStateForSaveMode -boolean true
#defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

#Expand print panel dialog boxes by default
#defaults write -g PMPrintingExpandedStateForPrint -boolean true
#defaults write -g PMPrintingExpandedStateForPrint2 -bool true

#Global User Interface Scale Multiplier
#defaults write -g AppleDisplayScaleFactor -float

#Enable continuous spell checking everywhere
#defaults write -g WebContinuousSpellCheckingEnabled -boolean

#Enable automatic dash replacement everywhere
#defaults write -g WebAutomaticDashSubstitutionEnabled -boolean

#Enable automatic text replacement everywhere
#defaults write -g WebAutomaticTextReplacementEnabled -boolean

#Icon Size for Open Panels
#defaults write -g NSNavPanelIconViewIconSizeForOpenMode -number

#Keyboard press and hold behavior
#defaults write -g ApplePressAndHoldEnabled -boolean

#Monitor font smoothing
#Display the current font smoothing:
#defaults -currentHost read -globalDomain AppleFontSmoothing

#Change the font smoothing (0=off, 1=light, 2=Medium/flat panel, 3=strong/blurred)
#defaults -currentHost write -globalDomain AppleFontSmoothing -int 0
#Restart applications to see the effect

#Delete the setting completely (restore default)
#defaults -currentHost delete -globalDomain AppleFontSmoothing

#Set the font anti-aliasing minimum sizes, globally or per-application:
#defaults -currentHost write .GlobalPreferences AppleSmoothFontsSizeThreshold -int 16
#defaults -currentHost write .GlobalPreferences AppleFontSmoothing -int 0
#defaults -currentHost write com.apple.safari AppleAntiAliasingThreshold -int 16

#Address Book
#Show Contact Reflection:
#defaults write com.apple.AddressBook reflection -boolean

#bbedit
#Use old style modal Find Dialog:
#defaults write com.barebones.bbedit FindDialog:UseOldSk00lFindDialog -boolean

#Dashboard launcher
#Drag widgets out of dashboard (devmode)
#defaults write com.apple.dashboard devmode -boolean

#Dictionary
#Reuse dictionary definition window:
#defaults write com.apple.Dictionary ProhibitNewWindowForRequest -boolean

#DiskUtility
#Show hidden Partitions:
#defaults write com.apple.DiskUtility DUShowEveryPartition -boolean

#Dock
#Two Dimensional Dock (Leopard---Mavericks only)
#defaults write com.apple.dock no-glass -bool YES
#killall Dock

#Three Dimensional Dock (Leopard---Mavericks only)
#defaults write com.apple.dock no-glass -bool NO
#killall Dock

#Disable Bouncing dock icons:
#defaults write com.apple.dock no-bouncing -bool True
#killall Dock
#To re-enable, set this back to False

#Minimize windows into their application’s icon
#defaults write com.apple.dock minimize-to-application -bool true

#Dim the Dock Icon of any 'Hidden' Applications:
#defaults write com.apple.Dock showhidden -bool YES
#killall Dock
#Disable multi-display swoosh animations
#defaults write com.apple.dock workspaces-swoosh-animation-off -boolean-neg

#Enable iTunes pop-up notifications:
#defaults write com.apple.dock itunes-notifications -boolean dock

#Minimize effect
#defaults write com.apple.dock mineffect -string

#Turn the Dock icons translucent for applications that are open but hidden:
#defaults write com.apple. Dock showhidden -bool YES;
#killall Dock
#(replace 'YES' with 'NO' to disable this feature)

#Add a 'Recent Applications' stack to the Dock.
#defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'
#killall Dock
#To remove - just drag out of the dock again

#Stacks, Activate Mouse Over Gradient:
#defaults write com.apple.dock mouse-over-hilte-stack -boolean YES
#killall Dock
#To deactivate set back to NO

#Finder
#Show hidden files:
#defaults write com.apple.finder AppleShowAllFiles TRUE
#killall Finder

#Hide hidden files (default)
#defaults write com.apple.finder AppleShowAllFiles FALSE
#killall Finder

#Show all filename extensions
#defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#Disable the OS X Crash reporter (quit dialog after an application crash)
#defaults write com.apple.CrashReporter DialogType none
#To enable the crash reporter (default) change none to prompt

#Disable dashboard widgets (saves RAM)
#defaults write com.apple.dashboard mcx-disabled -boolean YES
#To Enable dashboard widgets (default) set this to NO

#Disable the New Window Animation:
#defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO
#To enable the animation (default) set this to YES

#Start the status bar Path at OME (instead of Hard drive)
#defaults write /Library/Preferences/com.apple.finder PathBarRootAtHome -bool

#Enable Remote Disc (1)
#defaults write com.apple.NetworkBrowser EnableODiskBrowsing -boolean
#Enable Remote Disc (2)
#defaults write com.apple.NetworkBrowser ODSSupported -boolean

#Enable movie preview thumbnails:
#defaults write com.apple.QuickLookDaemon QLDisableQTThumbnails -boolean-neg

#Minimum size for playable previews:
#defaults write com.apple.finder QLInlinePreviewMinimumSupportedSize -integer

#Auto stop previews when scrolling:
#defaults write com.apple.finder AutoStopWhenScrollingOffBounds -boolean

#Auto stop previews when selection changes:
#defaults write com.apple.finder AutoStopWhenSelectionChanges -boolean

#CoverFlow background color:
#defaults write com.apple.finder IKImageFlowBackgroundColor -boolean

#Show X-ray for folders with custom icons:
#defaults write com.apple.DisableXRayForFoldersWithCustomIcons -boolean-neg

#Show X-ray folders in QuickLook:
#defaults write com.apple.finder QLEnableXRayFolders -boolean

#Enable slow motion with shift key on QuickLook:
#defaults write com.apple.finder QLEnableSlowMotion -boolean

#Hide QuickLook on deactivation or application switch:
#defaults write com.apple.finder QLHidePanelOnDeactivate -boolean

#When performing a search, search the current folder by default (the default 'This Mac' is "SCev")
#defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

#Show version column in search results:
#defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.version.visible -boolean

#Show label column in search results:
#defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.label.visible -boolean

#Show comments column in search results:
#defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.comments.visible -boolean

#Show size column in search results:
#defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.size.visible -boolean

#Disable the warning when changing a file extension
#defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

#Use white text for desktop icons:
#defaults write com.apple.finder Desktop.HasDarkBackground -boolean

#Show stripes in list views:
#defaults write com.apple.finder FXListViewStripes -boolean

#Allow quitting Finder, like any other app. doing so will also hide desktop icons.
#This is only really useful with a 3rd party file manager:
#defaults write com.apple.finder QuitMenuItem -bool YES; killall Finder
#Front Row launcher
#Set preferred display to use:
#defaults write com.apple.frontrow FrontRowUsePreferredDisplayID -integer

#iCal
#Log HTTP Activity:
#defaults write com.apple.iCal LogHTTPActivity -boolean

#iTunes 10
#Make the arrows next to artist & album jump to local iTunes library folders instead of Store:
#defaults write com.apple.iTunes show-store-link-arrows -bool YES
#defaults write com.apple.iTunes invertStoreLinks -bool YES
#To restore the default change the YES to NO

#Restore the standard close/minimise buttons:
#defaults write com.apple.iTunes full-window -1

#Hide the iTunes Genre list:
#defaults write com.apple.iTunes show-genre-when-browsing -bool FALSE

#Mail
#Close Apple Mail before making any changes.

#Set a minimum font size of 14px (affects reading and sending email):
#defaults write com.apple.mail MinimumHTMLFontSize 14

#Force all Mail messages to display as plain text:
#defaults write com.apple.mail PreferPlainText -bool TRUE
#For rich text (the default) set it to FALSE

#Disable tracking of Previous Recipients:
#defaults write com.apple.mail SuppressAddressHistory -boolean

#Send Windows friendly attachments:
#defaults write com.apple.mail SendWindowsFriendlyAttachments -boolean

#Mouse
#Enable momentum scrolling for Magic Mouse:
#defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseMomentumScroll -boolean

#OmniGraffle
#Allow scroll wheel zooming:
#defaults write com.omnigroup.OmniGraffle DisableScrollWheelZooming -boolean-neg

#Allow scroll wheel zooming in OmniGrafflePro:
#defaults write com.omnigroup.OmniGrafflePro DisableScrollWheelZooming -boolean-neg

#Preview
#Scale images by default when printing:
#defaults write write com.apple.Preview PVImagePrintingScaleMode -boolean

#Preview Auto-rotate by default when printing:
#defaults write write com.apple.Preview PVImagePrintingAutoRotate -boolean

#Quit Always Keeps Windows:
#defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -boolean

#Quick Time Player
#Automatically show Closed Captions (CC) when opening a Movie:
#defaults -currentHost write com.apple.QuickTimePlayerX.plist MGEnableCCAndSubtitlesOnOpen -boolean

#Safari
#Enable encoding detector:
#defaults write com.apple.Safari WebKitUsesEncodingDetector -boolean

#Tooltip Font Size:
#defaults write com.apple.Safari NSToolTipsFontSize -float

#Enable debug menu:
#defaults write com.apple.Safari IncludeDebugMenu -boolean

#ScreenSharing
#Debug (To Show Bonjour)
#defaults write com.apple.ScreenSharing debug -boolean

#Do Not Send Special Keys to Remote Machine
#defaults write com.apple.ScreenSharing DoNotSendSystemKeys -boolean

#Skip local address check:
#defaults write com.apple.ScreenSharing skipLocalAddressCheck -boolean

#Screen sharing image quality
#defaults write com.apple.ScreenSharing controlObserveQuality -integer

#Number of recent hosts on ScreenSharingMenulet:
#defaults write com.klieme.ScreenSharingMenulet maxHosts -integer

#Display IP-Addresses of the local hosts on ScreenSharingMenulet:
#defaults write com.klieme.ScreenSharingMenulet showIPAddresses -boolean

#RemoteManagement
#Disable Multicast:
#defaults write /Library/Preferences/com.apple.RemoteManagement ARD_MulticastAllowed -boolean

#Remote Desktop
#Set the maximum number of computers that can be observed:
#defaults write com.apple.RemoteDesktop multiObserveMaxPerScreen -integer 9
#(up to 50 opposed to the default of 9)
#Terminal
#Terminal windows take focus with mouse over window:
#defaults write com.apple.terminal FocusFollowsMouse -string YES

#Terminal windows take focus with click (default)
#defaults write com.apple.terminal FocusFollowsMouse -string NO

#TextWrangler
#Camel Case Navigation:
#defaults write com.barebones.textwrangler Editor:ControlArrowCamelCase -bool

#TimeMachine
#Auto backup:
#defaults write com.apple.TimeMachine AutoBackup =1

#Backup frequency default= 3600 seconds (every hour) 1800 = 1/2 hour, 7200=2 hours
#sudo defaults write /System/Library/Launch Daemons/com.apple.backupd-auto StartInterval -int 1800

#X11 (2.4.0)

#Auto-quit on close last window (XQuartz)
#defaults write org.macosforge.xquartz.X11 wm_auto_quit -boolean

#Focus follows mouse (10.5.5 and up) (XQuartz)
#defaults write org.macosforge.xquartz.X11 wm_ffm -boolean