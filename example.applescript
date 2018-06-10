set hideMe to false
set EscapeChr to ASCII character 29
tell application "Terminal"
	if (count of the windows) is less than 1 then
		tell window 1 to do script ""
		delay 1.0E-5
		set hideMe to true
	end if
	
	do script "telnet -NK4c localhost 10023"
	delay 1.0E-5
	do script "1*1!" in window 1
	delay 0.4
	do script "" in window 1
	do script EscapeChr & "quit" in window 1
	do script "exit" in window 1
	close window 1
	
	if hideMe then tell window 1 to set miniaturized to true
end tell
