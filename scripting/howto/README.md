# Examples

Кнопки мыши
![Кнопки мыши](btn.JPG)

Как активировать макрос (возможно если игра запущена из-под админа - надо логитек запускать из под админа тоже)
![Как активировать макрос 1](how-to-enable-lua-1.png)

Разница между галочками в профилях ниже. Профили и скрипты в них переключаются автоматически при смене активного `*.exe`
![Как активировать макрос 2](how-to-enable-lua-2.png)

---

Запуск скрипта из файлов
```lua
data = dofile[[F:\home\koshi8bit\soft\windows\01-main\logitech\scripting\prj\default.lua]]
```
---
Простая покупка в таркове
```lua
--data = dofile[[F:\home\koshi8bit\soft\windows\01-main\logitech\scripting\prj\tarkov.lua]]

function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);

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
```
---
Обработка нажатия с кнопкой CTRL
```lua
 if (event == "G_PRESSED" and arg == 21 and IsModifierPressed("ctrl")) then
  ColorBreathe()
 end
```
---
Циклическая обработка по одной кнопке
```lua
function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
	local count_ = 0
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
		repeat
			if IsMouseButtonPressed(3) then break end -- RMB
			count_ = count_ + 1
			MoveMouseToVirtual(24000, 40000)
			Sleep(100)
		until count_ > 100
	end
end
```
---
Прост примеры из гитхаба
- [Мегачел с github Douile/logitech-toggle-keys](examples\logitech-toggle-keys-master\README.md)
- [LGS_script_template.lua](examples/LGS_script_template.lua)
