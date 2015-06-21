launchctl unload -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist
launchctl load -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist
syslog -s -l 4 "[freeman] Just restarted discoveryd."
