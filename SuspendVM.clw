
  PROGRAM

  INCLUDE('stringtheory.inc'),ONCE 
  
  MAP
    MODULE('win32')
       VMSleep(LONG pMilliseconds),PASCAL,NAME('Sleep')
       VMODS(*CSTRING),RAW,PASCAL,NAME('OutputDebugStringA')
    END 
  END
  
csLog  CSTRING(200)
oST  StringTheory 

  CODE
  
  oST.SetValue('stop the VM')
  oST.SaveFile('C:\dl\SuspendVM.txt')
  
  csLog = 'Waiting for VM to sleep<00>'
  VMODS(csLog)  
  
  csLog = 'Waiting 60 seconds for VM to sleep<00>'
  VMODS(csLog)  
  VMSleep(60000) 
  csLog = 'Sleep finished<00>'
  VMODS(csLog)  
  RETURN 
