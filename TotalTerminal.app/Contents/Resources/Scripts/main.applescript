tell application "Terminal"
	delay 1 -- this delay is important to prevent random "Connection is Invalid -609" AppleScript errors 
	try
		«event BATTinit»
	on error msg number num
		display dialog "
Unable to launch TotalTerminal.
		
" & msg & " (" & (num as text) & ")" & " 

You may visit 
http://getsatisfaction.com/binaryage 
to get support on this issue." with icon 0
	end try
end tell