﻿iniAllActions.="Set_Clipboard|" ;Add this action to list of all actions on initialisation

runActionSet_Clipboard(InstanceID,ElementID,ElementIDInInstance)
{
	global
	
	
	Clipboard:=v_GetVariable(InstanceID,v_replaceVariables(InstanceID,%ElementID%Varname))
	
	

	MarkThatElementHasFinishedRunning(InstanceID,ElementID,ElementIDInInstance,"normal")
	return
}
GetNameActionSet_Clipboard()
{
	return lang("Set Clipboard")
}
GetCategoryActionSet_Clipboard()
{
	return lang("Variable")
}

GetParametersActionSet_Clipboard()
{
	global
	parametersToEdit:=["Label|" lang("Variable_name"),"Text||Varname"]
	
	return parametersToEdit
}

GenerateNameActionSet_Clipboard(ID)
{
	global
	
	return % lang("Set_Clipboard") "`n" lang("from %1%",GUISettingsOfElement%ID%Varname) 
	
}