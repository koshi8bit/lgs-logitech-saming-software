function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 11) then
	end
end