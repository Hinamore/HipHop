   @echo Off
   Color 0A
   :startlol
   echo.
   echo.
   echo      І        І     І
   echo      І      І   І   І
   echo      І      І   І   І
   echo      ІІІІ     І     ІІІІ
   echo.
   echo      
   pause
   title Hide
   set wait=ping 1.1.1.1 -n 1 -w 3000 > nul
    set ddate=0
   set ddatep=1
   set dt=2
   set date1=0
   set %error=0
   set %num=1
   set ap=C:\
   if exist %ap%\acc.txt goto HInput ) else goto HInput
   :setup
   Echo please enter The password to register.
      SetLocal DisableDelayedExpansion
   Set /p "Line2="
   Rem Save 0x08 character in BS variable
   echo l >>%ap%\acc.txt
   goto restart
   :restart
   if exist hide.bat start hide.bat &exit
   ) else start hide.exe &exit 

   :login
   :::::::::::::BEGIN OF CODE:::::::::::::   
   @Echo Off   
   :HInput
   ::Version 3.0     
   SetLocal DisableDelayedExpansion
   Echo Enter your password below:
   Set "Line="
   Rem Save 0x08 character in BS variable
   For /F %%# In (
   '"Prompt;$H&For %%# in (1) Do Rem"'
   ) Do Set "BS=%%#"
   
   :HILoop
   Set "Key="
   For /F "delims=" %%# In (
   'Xcopy /L /W "%~f0" "%~f0" 2^>Nul'
   ) Do If Not Defined Key Set "Key=%%#"
   Set "Key=%Key:~-1%"
   SetLocal EnableDelayedExpansion
   If Not Defined Key Goto :HIEnd
   If %BS%==^%Key% (Set /P "=%BS% %BS%" <Nul
   Set "Key="
   If Defined Line Set "Line=!Line:~0,-1!"
   ) Else Set /P "=*" <Nul
   If Not Defined Line (EndLocal &Set "Line=%Key%"
   ) Else For /F delims^=^ eol^= %%# In (
   "!Line!") Do EndLocal &Set "Line=%%#%Key%"
   Goto :HIEnd
   :HIEnd
   if %Line%==%Line2%  echo hi )
   else 
   (
    set %error=%%error%+%%num% 
    if %%error%=3 goto wrong
    )
    else
    (
    goto HInput
    )
   )
   :wrong
   echo sorry you entered the password 3 times wrongs
    %wait%
    exit 
   
   ::::::::::::::END OF CODE::::::::::::::
   :check