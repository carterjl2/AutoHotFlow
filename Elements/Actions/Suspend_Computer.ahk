﻿iniAllActions.="Suspend_Computer|" ;Add this action to list of all actions on initialisation

runActionSuspend_Computer(InstanceID,ThreadID,ElementID,ElementIDInInstance)
{
	global
	
	DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0) ;Hybernate
	
	MarkThatElementHasFinishedRunning(InstanceID,ThreadID,ElementID,ElementIDInInstance,"normal")
	return
}
getNameActionSuspend_Computer()
{
	return lang("Suspend_computer")
}
getCategoryActionSuspend_Computer()
{
	return lang("Power")
}

getParametersActionSuspend_Computer()
{
	global
	
	parametersToEdit:=Object()

	return parametersToEdit
}

GenerateNameActionSuspend_Computer(ID)
{
	global
	;MsgBox % %ID%text_to_show
	
	return lang("Suspend_computer")
	
}