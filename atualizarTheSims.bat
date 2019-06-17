chcp 1252
@ECHO OFF

ECHO moving to repository folder
cd %repositoryFolder%

call ambientes.bat

setlocal
:PROMPT
SET /P AREYOUSURE=Voce tem certeza que deseja atualizar? Progressos nao salvos neste computador serao perdidos(S/[N])? 
IF /I "%AREYOUSURE%" NEQ "S" GOTO END

ECHO cleaning repo
git checkout HEAD -- saves

ECHO updating
git pull

ECHO copying updated saves to the sims folder
echo XCOPY %folder% %theSimsFolder% /Y
XCOPY %folder% %theSimsFolder% /Y

pause

:END
endlocal