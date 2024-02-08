@echo off
set INPUT_APKPATH=%1

echo INPUT_APKPATH = %INPUT_APKPATH%

echo a:apk속미   b:aab속미   c:aar속미 (a/b/c)?
set /p option=Please enter the above options:
if /i %option%==a goto a 
if /i %option%==b goto b 
if /i %option%==c goto c
:a 
	java -jar -Duser.language=en -Dfile.encoding=UTF8 vm-protect.jar apk %INPUT_APKPATH%
	Pause
	EXIT
:b
	java -jar -Duser.language=en -Dfile.encoding=UTF8 vm-protect.jar aab %INPUT_APKPATH%
	Pause
	EXIT
:c
	java -jar -Duser.language=en -Dfile.encoding=UTF8 vm-protect.jar aar %INPUT_APKPATH%
	Pause
	EXIT
	
Pause
EXIT