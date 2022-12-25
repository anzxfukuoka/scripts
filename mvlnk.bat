rem перемещает все, переданные в   
rem аргументах файлы в %MENUDIR%

@ECHO OFF

rem start menu links path
set MENUDIR="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"

echo movig to %MENUDIR%

for %%x in (%*) do (
	   echo Hey %%~x
	   move /-y "%%~x" %MENUDIR%

   )