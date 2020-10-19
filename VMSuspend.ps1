cd "C:\Program Files (x86)\VMware\VMware Workstation"

$RunningVMs = .\vmrun list | select-object -skip 1
 
Foreach ($RunningVM in $RunningVMs)
{
    "Suspending $RunningVM..."
    .\vmrun suspend "$RunningVM"
}