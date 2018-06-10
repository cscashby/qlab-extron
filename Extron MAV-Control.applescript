set hideMe to false
set EscapeChr to ASCII character 29
tell application id "com.figure53.QLab.4" to tell front workspace
	set Matrix_IP to q name of cue "MATRIXIP"
	set Matrix_Port to q name of cue "MATRIXPORT"
	set Matrix_Command to notes of last item of (active cues as list)
end tell

tell application "Terminal"
	if (count of the windows) is less than 1 then
		tell window 1 to do script ""
		delay 1.0E-5
		set hideMe to true
	end if
	
	do script "telnet -NK4c " & Matrix_IP & " " & Matrix_Port
	delay 0.2
	do script Matrix_Command in window 1
	delay 0.4
	do script "" in window 1
	do script EscapeChr & "quit" in window 1
	do script "exit" in window 1
	close window 1
	
	if hideMe then tell window 1 to set miniaturized to true
end tell

