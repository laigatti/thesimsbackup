@echo off
CALL  ambientes.bat
ECHO  teste
echo  %folder%
REM   run copy 
XCOPY %theSimsFolder% %folder% /Y
