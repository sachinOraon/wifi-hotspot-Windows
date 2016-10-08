@echo off
title HotSpot Creator By Sachin Oraon
rem mode con cols=52 lines=55
color 0a
echo.
:Home
cls
set c=
echo ---------------------------------------------------
echo.
echo      7777777777777777777777777777777777777777
echo    70427777777777777777777772277777777772750807
echo   887777777777777777777777777                788
echo  82777777777777777777777777              777   88
echo 787777   57  71   77   772    777772722  597    88
echo 257777   4    4   17777772    712777777         87
echo 2877717  7    7  797  7272    727        117    87
echo 7077722          247  7121    722144087  497    87
echo 7877724    77    047  7424    24577777   407    87
echo 78722247   54   7547  7444    488        887   78
echo  8822225777447775122  708     777        777   88
echo   8881124442144412254447                     488
echo    77777777777777777777777777777777777777777777
echo      7777777777777777777777777777777777777777
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo.
echo ---------------------------------------------------
echo                       MENU                         
ECHO ---------------------------------------------------
echo  1. CREATE WiFi HotSpot
echo.
ECHO  2. SHOW your current HostedNetwork Status
echo.
echo  3. START Hosted Network
echo.
echo  4. STOP Wifi HotSpot
echo.
echo  5. CLEAR your Stats
echo.
echo  6. ENABLE Internet Connection Sharing
echo.
echo  7. EXIT
echo ---------------------------------------------------
echo.
net session>nul 2>&1
if not %errorlevel% equ 0 (
echo Hey %username% ...
echo.
echo You're not ADMIN !!
echo.
echo Please Run this App as ADMINISTRATOR...
ECHO.
echo ---------------------------------------------------
echo Press Any Key To EXIT...
pause>nul
exit
)
if not exist %ProgramData%\hs\id.txt (
echo Hey %USERNAME% ...
echo.
echo NO previous Hosted Network Found !!
echo.
echo ---------------------------------------------------
goto skipme
)
netsh wlan show hostednetwork>%ProgramData%\hs\status.txt
findstr /i /m /c:"not" %ProgramData%\hs\status.txt>%ProgramData%\hs\ns.txt
set /p rns=<%ProgramData%\hs\ns.txt
set /p rid=<%ProgramData%\hs\id.txt
set nsl=0
:lo
if defined rns (
set rns=%rns:~1%
set /a nsl+=1
goto lo
)
if %nsl%==0 ( 
echo Hey %USERNAME%...
echo.
echo HotSpot service is currently ACTIVE !!!
echo. 
echo with Name = "%rid%"
echo.
echo ---------------------------------------------------
) else (
echo Hey %USERNAME%...
echo.
echo For now... NO HotSpot Service is running !!!
echo.
echo ---------------------------------------------------
)
:skipme
echo.
set /p c=Make your choice (1-7): 
if "%c%"=="1" (goto Create)
if "%c%"=="2" (goto Show)
if "%c%"=="3" (goto Startt)
if "%c%"=="4" (goto Stop)
if "%c%"=="5" (goto Clear)
if "%c%"=="6" (goto Enable)
if "%c%"=="7" (exit)
echo.
echo Wrong option entered...
echo.
echo Press any key to retry...
pause>nul
goto Home
:Startt
cls
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo   And ofcourse don't forget to TURN ON your Wifi ! 
echo.
echo ---------------------------------------------------
echo  3. Start your created HostedNetwork               
ECHO ---------------------------------------------------
if not exist %ProgramData%\hs\hs.log (
echo.
echo  Oops !! NO previous HostedNetwork Found...
echo.
echo  Please create a New one...
echo.
echo ---------------------------------------------------
echo.
pause
goto Create
)
if %nsl%==0 ( 
echo.
echo HotSpot service is currently Active !!!
echo. 
echo with Name = "%rid%"
echo.
echo ---------------------------------------------------
echo.
pause
goto Home
)
netsh wlan set hostednetwork mode=allow>nul
netsh wlan start hostednetwork>nul 2>&1
if %errorlevel% equ 0 (
goto anim
)
if exist %ProgramData%\id.txt (
set /p sid=<%ProgramData%\id.txt
) ELSE (
set sid=%rid%
)
echo.
echo "%sid%" couldn't be started -_-
echo.
echo Have U Turned ON your WiFi  ~_~
echo.
echo ---------------------------------------------------
echo.
echo Press any key to go Home...
pause>nul
goto Home
:anim
for /l %%i in (1,1,22) do echo.
echo                        888
echo                      0888887
echo                     888888887
echo                     888888887
echo                      2888807
echo                        888
for /l %%i in (1,1,1000) do echo i>nul
cls
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo   And ofcourse don't forget to TURN ON your Wifi ! 
echo.
echo ---------------------------------------------------
echo  3. Start your created HostedNetwork               
ECHO ---------------------------------------------------
for /l %%i in (1,1,17) do echo.
echo                   7772255522777
echo                7255222222222225557
echo               042222151515151122240
echo               74557          772541
echo                77               77
echo.
echo                        888
echo                      0888887
echo                     888888887
echo                     888888887
echo                      2888807
echo                        888
for /l %%i in (1,1,1000) do echo i>nul
cls
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo   And ofcourse don't forget to TURN ON your Wifi ! 
echo.
echo ---------------------------------------------------
echo  3. Start your created HostedNetwork               
ECHO ---------------------------------------------------
for /l %%i in (1,1,9) do echo.
echo                      777777777                
echo               7777777777777777777777
echo            77777777777777777777777777777
echo         7777777777777777777777777777777777
echo        777777777                  777777777
echo         77777                        7777
echo          77                            7
echo.
echo                   7772255522777
echo                7255222222222225557
echo               042222151515151122240
echo               74557          772541
echo                77               77
echo.
echo                        888
echo                      0888887
echo                     888888887
echo                     888888887
echo                      2888807
echo                        888
for /l %%i in (1,1,1000) do echo i>nul
cls
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo   And ofcourse don't forget to TURN ON your Wifi ! 
echo.
echo ---------------------------------------------------
echo  3. Start your created HostedNetwork               
ECHO ---------------------------------------------------
echo.
echo                77777777777777777777
echo            7777777777777777777777777777
echo        777777777777777777777777777777777777
echo     7777777777                     77777777777
echo   777777777                            777777777
echo  777777                                    777777
echo  7777                                        777
echo   7                  777777777                7
echo               7777777777777777777777
echo            77777777777777777777777777777
echo         7777777777777777777777777777777777
echo        777777777                  777777777
echo         77777                        7777
echo          77                            7
echo.
echo                   7772255522777
echo                7255222222222225557
echo               042222151515151122240
echo               74557          772541
echo                77               77
echo.
echo                        888
echo                      0888887
echo                     888888887
echo                     888888887
echo                      2888807
echo                        888
echo.
echo ---------------------------------------------------
echo   "%rid%" Started Successfully...
echo ---------------------------------------------------
echo.
echo Press any key to go Home...
pause>nul
goto Home
:Create
cls
set x=
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo.
echo ---------------------------------------------------
echo.
echo  1. CREATE a NEW Wifi HotSpot from Scratch !
echo.
echo  2. DISPLAY your previously created Network
echo.
echo  3. Back to HOME
echo.
ECHO ---------------------------------------------------
echo.
set /p x=Make your choice (1-3): 
if "%x%"=="1" (goto new)
if "%x%"=="2" (goto prev)
if "%x%"=="3" (goto Home)
echo.
echo Wrong option entered...
echo.
pause
goto Create
:new
set conf=
cls
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo.
echo ---------------------------------------------------
echo  1. Create a new Wifi HotSpot from Scratch !
echo ---------------------------------------------------
echo  So you want to create a new one.. Let's begin...
echo ---------------------------------------------------
echo.
echo Enter your desired Hosted Network NAME
echo.
set /p id=
set tid=%id%
set len=0
:countI
if defined tid (
set tid=%tid:~1%
set /a len+=1
goto countI
)
if %len%==0 (
echo.
echo Oops! Nothing entered.. Please retry..
echo.
pause
goto new
)
:enterpass
cls
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo.
echo ---------------------------------------------------
echo  1. Create a new Wifi HotSpot from Scratch !
echo ---------------------------------------------------
echo  So you want to create a new one.. Let's begin...
echo ---------------------------------------------------
echo.
echo Enter your desired Hosted Network NAME
echo.
echo %id%
echo.
echo ---------------------------------------------------
echo.
echo Create a password for "%id%"
echo.
set /p pas=(minimum 8 chars): 
echo.
set tpas=%pas%
set cp=0
:countP
if defined tpas (
set tpas=%tpas:~1%
set /a cp+=1
goto countP
)
if %cp% LSS 8 (
echo You've entered %cp% chars...
echo.
echo Press Any Key To RETRY...
pause>nul
goto enterpass
)
echo ---------------------------------------------------
echo Your Network name is "%id%" and
echo.
echo password is "%pas%"
echo ---------------------------------------------------
set /p conf=Press any key to Confirm or N to Edit... 
if /i "%conf%"=="n" (
goto new
)
echo ---------------------------------------------------
echo.
netsh wlan set hostednetwork ssid="%id%" key="%pas%" keyusage=persistent
echo ---------------------------------------------------
echo Your Hosted Network is CREATED !
echo ---------------------------------------------------
if not exist %ProgramData%\hs (
mkdir %ProgramData%\hs
)
time /t >%ProgramData%\hs\time.txt
set /p t=<%ProgramData%\hs\time.txt
echo %id%>%ProgramData%\hs\id.txt
echo %pas%>%ProgramData%\hs\pas.txt
echo     Key                    : %pas%>%ProgramData%\hs\cpas.txt
echo Network created on...>%ProgramData%\hs\hs.log
echo. >>%ProgramData%\hs\hs.log
echo Date = %date%    Time = %t%>>%ProgramData%\hs\hs.log
echo. >>%ProgramData%\hs\hs.log
echo Name = "%id%">>%ProgramData%\hs\hs.log
echo. >>%ProgramData%\hs\hs.log
echo Pass = "%pas%">>%ProgramData%\hs\hs.log
echo Press any key to go Home...
pause>nul
goto Home
)
:prev
cls
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo.
echo ---------------------------------------------------
echo  2. Start your previously created Network...
ECHO ---------------------------------------------------
echo.
echo Checking for previously created network...
if exist %ProgramData%\hs\hs.log (
goto ff
) else (
goto nf
)
:ff
echo.
echo ---------------------------------------------------
echo Result :-
echo ---------------------------------------------------
echo.
type %ProgramData%\hs\hs.log
echo.
echo ---------------------------------------------------
set /p pid=<%ProgramData%\hs\id.txt
echo.
set /p m=Do you want to start "%pid%" ?(Y/N): 
if /i "%m%"=="y" (
goto Startt
) else (
echo.
echo Okay ! See you soon..
echo.
echo Press any key to go Home...
pause>nul
goto Home
)
:nf
echo.
echo ---------------------------------------------------
echo Result :-
echo ---------------------------------------------------
echo.
echo Nothing Found !
echo.
echo Looks like you're running this script for the
echo.
echo FIRST time !
echo.
echo No problem ! Let's create a NEW one..
echo.
echo ---------------------------------------------------
echo.
pause
goto new
:Show
cls
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo.
echo ---------------------------------------------------
echo  2. Show your current HostedNetwork Status         
ECHO ---------------------------------------------------
echo          Below is your CoOkiE !!!
echo ---------------------------------------------------
if not exist %ProgramData%\hs\hs.log (
echo.
echo  Oops !! NO previous HostedNetwork Found...
echo.
echo  Please create a New one...
echo.
echo ---------------------------------------------------
echo.
pause
goto Create
)
netsh wlan show hostednetwork
if exist %ProgramData%\hs\cpas.txt (
echo Password of "%rid%"
echo -------------------------
type %ProgramData%\hs\cpas.txt
echo.
)
echo ---------------------------------------------------
echo.
pause
goto Home
:Stop
cls
set s=
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo.
echo ---------------------------------------------------
echo  4. Stop your current HostedNetwork                
ECHO ---------------------------------------------------
echo  Time to pack-up ! No more WiFi burner...
echo ---------------------------------------------------
echo.
if not "%nsl%"=="0" (
echo Nothing to STOP !!!
echo.
echo ---------------------------------------------------
echo.
echo Press any key to go Home...
pause>nul
goto Home
)
set /p s=Do you want to stop "%rid%" ?(Y/N): 
if /i "%s%"=="Y" (
netsh wlan stop hostednetwork>nul
echo.
echo ---------------------------------------------------
echo              Hosted Network STOPPED !
echo ---------------------------------------------------
echo                  rEBBBBBBMBBBBBji
echo              IBBBBBEJiiBBBBirSBBBBBMi
echo           vBBMBi                 ikBBMG
echo         LBBBi                        XBBB
echo       iBBB                             LBBN
echo      PBBi                                ZBB
echo     BBM                                   iBBi
echo    BMP                                      MBi
echo   OBG                                        BB
echo  iBB                                         vBB
echo  BBi           BBB             BBB            BBi
echo  BB           MBBBM           SBBBBv          iBB
echo  Mu          VBBBMBM          BBBBBB           BB
echo  Bi           BBBBBi          GBBBBu           BM
echo  Bi            BBB             BBBB            BB
echo  Bi                                            BM
echo  BP                                            BB
echo  BB                 iFGBBBMNvi                JBN
echo  BBv            iOBBBBBBOOBBBBBBJ             vBB
echo   BB          IBBBFi          rBBBBi         ZBN
echo   LBB        vBBi                uBB        YBB
echo    VBB                                     JBB
echo     uBBi                                  GBB
echo      iBBP                               iBBZ
echo        NBBU                           iBBBi
echo          MMBOi                      JBBBr
echo            UBBBBv               iqBMBMi
echo               uBMBBBBMkFjUSEBBMBBBZi
echo                    iLFZOOOOPUii
echo ---------------------------------------------------
echo Press any key to go Home
pause>nul
goto Home
) else (
echo.
echo ---------------------------------------------------
echo Okay ! I'm not killing your Hosted Network...
echo ---------------------------------------------------
echo.
echo Press any key to go Home...
pause>nul
goto Home
)
:Clear
cls
set clr=
if exist %ProgramData%\id.txt (
set /p cid=<%ProgramData%\id.txt
) ELSE (
set cid=%rid%
)
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo.
echo ---------------------------------------------------
echo  5. ALL CLEAR !!!
ECHO ---------------------------------------------------
echo.
if not exist %ProgramData%\hs\hs.log (
echo Hey %USERNAME% ...
echo.
echo Nothing to DELETE !!
echo.
echo ---------------------------------------------------
echo Press Any Key To Go HOME...
PAUSE>NUL
goto Home
)
SET /p clr=Are you SURE? (Y/N): 
if /i "%clr%"=="y" (
echo.
ECHO ---------------------------------------------------
echo.
echo ...Deleting "%cid%"
del /f /q %ProgramData%\hs
for /L %%i in (0,1,1500) do echo nothing > nul
netsh wlan set hostednetwork mode=disallow ssid=%random% key=%random%%random%>nul
echo.
echo ...All Cleaned UP!
echo.
ECHO ---------------------------------------------------
echo.
ECHO Press Any Key To Go HOME...
pause>nul
goto Home
)
echo.
ECHO ---------------------------------------------------
echo.
echo Okay... Nothing Deleted !!
echo.
echo See you soon !
echo.
ECHO ---------------------------------------------------
echo.
ECHO Press Any Key To go Home...
pause>nul
goto Home
:Enable
cls
echo.
echo ------------------HOTSPOT CREATOR------------------
echo.
echo   (For Windows Vista x86/x64 and above versions)	
echo  Before creating Wifi Hotspot you have to manually 
echo     enable Internet Connection Sharing in your     
echo         desired Dial-up or Wifi Network.           
echo   And ofcourse don't forget to TURN ON your Wifi ! 
echo.
echo ---------------------------------------------------
echo  7. To Enable ICS...               
ECHO ---------------------------------------------------
echo.
echo  A Window will open after you press ENter showing
echo  LIST of ADAPTERS. Right Click on desired adapter 
echo  and go to Properties option. Now move to SHARING
echo  tab and Check this "Allow other network users to
echo  connect through this computer's internet" option
echo  Now select "Wireless network connection 2"  from
echo  the dropdown list.
echo  Save the setting and you're done...
echo.
echo  Press enter to open that WINDOW....
pause>nul
ncpa.cpl
goto Home