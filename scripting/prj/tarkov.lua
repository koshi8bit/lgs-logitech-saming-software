--data = dofile[[F:\home\koshi8bit\soft\windows\01-main\logitech\scripting\prj\tarkov.lua]]

function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg)

	-- if event == "MOUSE_BUTTON_PRESSED" and arg == 2 and IsModifierPressed("ctrl") then
	-- 	PressAndReleaseMouseButton(3)
	-- 	Sleep(10)
	-- 	MoveMouseRelative(20, 125)
	-- 	Sleep(10)
	-- 	PressAndReleaseMouseButton(1)
    -- end

    if event == "MOUSE_BUTTON_PRESSED" and arg == 6 then
		x, y = GetMousePosition()
		PressAndReleaseMouseButton(1)
		Sleep(50)
		MoveMouseTo(40233, 29648)
		PressAndReleaseMouseButton(1)
		Sleep(5)
		PressAndReleaseKey("y")
		MoveMouseTo(x, y)
    end

    if event == "MOUSE_BUTTON_PRESSED" and arg == 4 then
		MoveMouseTo(60951, 8198)
		Sleep(10)
		PressAndReleaseMouseButton(1)
		Sleep(30)
		MoveMouseTo(58748, 11750)
    end

	if (event == "MOUSE_BUTTON_PRESSED" and arg == 8) then
		SetBacklightColor(255, 0, 0)
		PressAndReleaseMouseButton(1)
		Sleep(50)
		PressAndReleaseKey("y")
	end
	
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 9) then
		SetBacklightColor(0, 255, 0);
		x, y = GetMousePosition();
		OutputLogMessage("Mouse is at %d, %d\n", x, y);
	end

end