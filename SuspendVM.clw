
  PROGRAM

  MAP
    MODULE('win32')
       VMSleep(LONG pMilliseconds),PASCAL,NAME('Sleep')
       VMODS(*CSTRING),RAW,PASCAL,NAME('OutputDebugStringA')
    END 
  END
  
csLog  CSTRING(200)

  CODE
  
  RUN('C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe "& ""c:\dl\VMSuspend.ps1"""') 
  csLog = 'Waiting for VM to sleep<00>'
  VMODS(csLog)  
  VMSleep(30000) 
  csLog = 'Sleep finished<00>'
  VMODS(csLog)  
  RETURN 
