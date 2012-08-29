# This file belongs in ~\Documents\WindowsPowerShell as Microsoft.PowerShell_profile.ps1
# Because Microsoft sucks at file names and paths
# Powershell is awesome, but for all of the coders in the place, they
# can't figure out intelligent file paths.
# At least they ditched "Documents and Settings" for "Users"
# Yet somehow they missed "Program Files"...
# #facepalm

# In order for the profile to work, you must change the PowerShell Execution Policy
# > Set-ExecutionPolicy Unrestricted [[-Scope] {Process | CurrentUser | LocalMachine | UserPolicy | MachinePolicy}]

Set-Alias npp 'C:\Program Files (x86)\Notepad++\notepad++.exe'
Set-Alias python3 'C:\Python32\python.exe'
Set-Alias py3 'C:\Python32\python.exe'
Set-Alias python2 'C:\Python27\python.exe'
Set-Alias py2 'C:\Python27\python.exe'
Set-Alias which get-command
#Set-Alias knife 'C:\Program Files (x86)\opscode\chef\bin\knife -c C:\Users\waldo\.chef\knife.rb'
Set-Alias mvim gvim

function mkcd {
	Param($directory)
	mkdir $directory
	cd $directory
}

# less
# grep
# touch
