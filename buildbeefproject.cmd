@echo off

:: set BEEF_DIR=C:\Users\Braedon\AppData\Local\BeefLang\bin
set BEEF_DIR=%~dp0\Beef\IDE\dist

echo Building ARM
%BEEF_DIR%/BeefBuild -config=Debug -platform=armv7-none-linux-androideabi23 -workspace=BeefProject
echo Building ARM64
%BEEF_DIR%/BeefBuild_d -config=Debug -platform=aarch64-none-linux-android23 -workspace=BeefProject
echo Building x86
%BEEF_DIR%/BeefBuild -config=Debug -platform=i686-none-linux-android23 -workspace=BeefProject
echo Building x86_64
%BEEF_DIR%/BeefBuild -config=Debug -platform=x86_64-none-linux-android23 -workspace=BeefProject

echo All done!
pause