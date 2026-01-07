-- data = dofile[[F:\home\koshi8bit\soft\windows\01-main\logitech\scripting\prj\tarkov-buy.lua]]
function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
		MoveMouseTo(1000, 1000)
	end
end