﻿
;this is the menu on top of the main window
Menu, MyMenu,add,% lang("Save"),ui_Menu_save


Menu, MyMenu,add,% lang("Run"),ui_Menu_MenuStart
Menu, MyMenu,add,% lang("Enable"),ui_Menu_Enable
Menu, MyMenu,add,% lang("Settings"),ui_Menu_Settings

Gui,menu,MyMenu
goto,überspringendsfasdg



ui_Menu_save:
i_save()
return




ui_Menu_MenuStart:

if (nowRunning=true)
{
	gosub, r_escapeRun
}
else
{
	SetTimer,r_startRun,-10

}

return




ui_Menu_Enable:
r_EnableFlow()
return

ui_Menu_Settings:
ui_SettingsOwFLow()
return


überspringendsfasdg:
sleep,1