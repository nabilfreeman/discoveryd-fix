# discoveryd-fix
Script to fix discoveryd's CPU rape in Yosemite.

# why?
discoveryd is a new network process added by Apple to Mac OS X Yosemite. It is supposed to make communication between all Apple devices on a network easier, by keeping a copy of all network members on each device (in the same way that Bitcoin is decentralised).

Unfortunately for whatever reason, Apple got it wrong. If you have any Apple device (phone, TV, etc) connected to the same WiFi network as your Mac there's a good chance you are suffering from a CPU leak.

On Macbooks this means your battery life gets destroyed.

The fix is to restart the discoveryd process and flush out the error... until it appears again.

Apple have removed discoveryd in El Capitan (10.11)!!! You can use this script to save your battery until it comes out later in 2015.

# how to use
- Click "Download ZIP" on the sidebar on this page.
- In Terminal, navigate to the folder where you put the `discoveryd.sh` file.
- Run `sh discoveryd.sh`

# what the script does
`launchctl unload -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist`

`launchctl load -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist`

`syslog -s -l 4 "[freeman] Just restarted discoveryd."`

# recommended implementation

The bug happens repeatedly, so even if you restart discoveryd it will come back.

I set up a cron job to run the discoveryd script every 60 seconds. No more problems.
