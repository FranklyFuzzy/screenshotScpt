set baseName to "screenshot"

#define where you want the screenshots to save to
set saveFolder to ("path/to/folder/") as text

#put in the ApplicationName you want the scirpt to focus on if running in fullscreen
set targetAppName to "ApplicationName"

#set delay to allow page to render
set myDelay to 5

tell application targetAppName
	activate
	delay 1
end tell

#define how many times you want the script to loop
repeat with i from 1 to 1900
	do shell script "usr/sbin/screencapture -x " & quoted form of (saveFolder & baseName & i & ".png")
	#perform enter key press
	tell application "System Events"
		key code 36
	end tell
	#perform right arrow key press
	tell application "System Events"
		key code 124
	end tell
	delay myDelay
end repeat
