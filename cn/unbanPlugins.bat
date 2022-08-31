@echo off
call :treeProcess
goto :eof

:treeProcess
rem Do whatever you want here over the files of this subdir, for example:
IF EXIST bannedplugin.json (
		echo [] >bannedplugin.json
)
for /D %%d in (*) do (
    cd %%d
    call :treeProcess
    cd ..
)
exit /b