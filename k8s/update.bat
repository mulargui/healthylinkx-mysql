
rem in case of data update, we need to cleanup everything and set it up again
call %~dp0.\cleanup.bat
call %~dp0.\setup.bat

exit /B 0

