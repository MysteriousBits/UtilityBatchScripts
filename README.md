# UtilityBatchScripts
Some helpful batch scripts for windows.


### JunkCleaner.bat
Its so annoying to delete a lot of junk files one by one regularly in windows. This script is a one click solution for it.  
It will remove all the files of the following directories permanently:  
```
Recycle Bin
Temp files (User + System)
Prefetch
Windows Update cache
Thumbnail cache
Delivery optimization files
Windows upgrade folders ($WINDOWS.~BT / $WINDOWS.~WS)
```
*Most of these files are useless temporary files generated by the system. But make sure if there is no risk in your case.
Also it is recommended to run this atleast after an interval of one week and the best time is after a reboot.*  
**Note that running this script with admin permission will make it able to clean up more.**

------------------------------------------------------------------------------------------

### ExtremelyDangerousRansomware!.bat
Funny prank with friends! Its a simple batch script which just `echo` some useless words and stop windows explorer for 5 seconds.
As a result the screen turns out black XD. Then it restarts windows explorer again and everything becomes normal. Give it a try by sharing with your friends :D
