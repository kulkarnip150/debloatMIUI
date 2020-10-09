
# debloatMIUI
debloat any MIUI(xiaomi) phone with one script. One script to rule them all :fire:	:fire:	:fire:	
```diff
Future work and todo:
+	adding support for more phone companies which give lot of bloat
+	fixing my shell script for linux and mac
```
```diff
!work in progress
```
---
##### If some one interest in  this then Contributions are welcome.
---
```diff
adb shell pm list packages (it will give package names of apps)
add desired package name in *debloatmiui.txt* at end of file
```
---
1. [Python 3](#python-script)
2. [Powershell (Windows)](#powershell)
3. [Shell (Linux/Mac)](#shell)
---
### python-script
```install pyautogui (pip install PyAutoGUI)```

```turn on developer mode in android and connect device to computer```

```run autoremoveapps.py```

```Wait till end. Phone will reboot```

It will start process. 
```diff
-	Don't move cursor after running script. It will stop processing
-	Currently script only work on windows
```
---
### powershell
```turn on developer mode in android and connect device to computer```

```run autoremoveapps.ps1 in powershell```

```Wait till end. Phone will reboot```

---
### shell
```turn on developer mode in android and connect device to computer```

```chmod 500 autoremoveapps.sh```

```run autoremoveapps.sh in terminal```

```Wait till end. Phone will reboot```

---
