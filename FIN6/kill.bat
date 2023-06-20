net stop MsMpSvc
sc config MsMpSvc start= disabled
taskkill /IM MsMpSvc.exe


