@echo off
cd %~dp0
COLOR 0A
::echo [InternetShortcut] >.\լ�Ƽ�-������̳.url 
::echo URL="http://bbs.zecoki.com" >>.\լ�Ƽ�-������̳.url
::echo [InternetShortcut] > %USERPROFILE%\desktop\լ�Ƽ�-������̳.url 
::echo URL="http://bbs.zecoki.com" >> %USERPROFILE%\desktop\լ�Ƽ�-������̳.url
.\bin\curl.exe -o .\լ�Ƽ�-������̳.url http://www.zecoki.com/xfiles/լ�Ƽ�-������̳.url
xcopy լ�Ƽ�-������̳.url %USERPROFILE%\desktop
if not exist readme.txt echo --����boot.img��ɽ�ѹ������boot�ļ�����ɴ�� > readme.txt && echo. >> readme.txt && echo                                                     --רҵROM������̳bbs.zecoki.com >> readme.txt
if exist boot.img call:unpack
goto:eof	
:unpack
if exist boot rmdir /s /q boot
md ".\boot"
copy .\bin\bootimg.exe  .\boot
copy boot.img  .\boot
cd .\boot
.\bootimg.exe  --unpack-bootimg
del boot.img boot-old.img bootimg.exe
exit
goto:eof