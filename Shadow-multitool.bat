@echo off
chcp 65001
title Multitool
setlocal enabledelayedexpansion



:menu
cls 
echo [30m                                
echo [38;2;0;255;0m                                     ███████╗██╗  ██╗ █████╗ ██████╗  ██████╗ ██╗    ██╗
echo [38;2;51;255;51m                                     ██╔════╝██║  ██║██╔══██╗██╔══██╗██╔═══██╗██║    ██║
echo [38;2;102;255;102m                                     ███████╗███████║███████║██║  ██║██║   ██║██║ █╗ ██║
echo [38;2;153;255;153m                                     ╚════██║██╔══██║██╔══██║██║  ██║██║   ██║██║███╗██║
echo [38;2;204;255;204m                                     ███████║██║  ██║██║  ██║██████╔╝╚██████╔╝╚███╔███╔╝
echo [38;2;229;255;229m                                     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝  ╚══╝╚══╝

echo. 
echo. 
echo [38;2;144;238;144m                                   ╔════════════════════════════════════════════════════╗
echo [38;2;152;251;152m                                   ║            Made by kastrioti07 on discord          ║
echo [38;2;144;238;144m                                   ║                                                    ║
echo [38;2;152;251;152m                   ╔═══════════════╚════════════════════════════════════════════════════╝════════════════╗
echo [38;2;144;238;144m                   ║ 01 Webhook spammer          06 Username lookup            11 Id to token half part  ║
echo [38;2;152;251;152m                   ║ 02 Port manager             07 Base64 decoder             12 Password breach checker║
echo [38;2;144;238;144m                   ║ 03 Phone number lookup      08 Ip port scanner            13 Password gen           ║
echo [38;2;152;251;152m                   ║ 04 Detect EXE file languge  09 Extract pyinstaller exe    14 Credit card gen        ║
echo [38;2;152;251;152m                   ║ 05 Ip lookup                10 Remove discord webhook     15 osint info             ║
echo [38;2;152;251;152m                   ╚═════════════════════════════════════════════════════════════════════════════════════╝


echo.

for /f "tokens=2 delims==" %%u in ('echo %USERNAME%') do set "username=%%u"

<nul set /p "=┌─── (user@%username%) "
echo.
<nul set /p "=└─# "
set /p choice=

if %choice%==01 goto webhook
if %choice%==02 goto port_manager
if %choice%==03 goto phone
if %choice%==04 goto detect
if %choice%==05 goto ip
if %choice%==06 goto user
if %choice%==07 goto base
if %choice%==08 goto scan
if %choice%==09 goto ext
if %choice%==10 goto remove
if %choice%==11 goto token
if %choice%==12 goto breach
if %choice%==13 goto gen
if %choice%==14 goto cc
if %choice%==15 goto info
pause
goto :menu

:webhook
cls
echo [38;2;229;255;229m· ▄▄▄▄  ▪  .▄▄ ·  ▄▄·       ▄▄▄  ·▄▄▄▄      .▄▄ ·  ▄▄▄· ▄▄▄· • ▌ ▄ ·. • ▌ ▄ ·. ▄▄▄ .▄▄▄  
echo [38;2;229;255;229m ██▪ ██ ██ ▐█ ▀. ▐█ ▌▪▪     ▀▄ █·██▪ ██     ▐█ ▀. ▐█ ▄█▐█ ▀█ ·██ ▐███▪·██ ▐███▪▀▄.▀·▀▄ █·
echo  [38;2;204;255;204m▐█· ▐█▌▐█·▄▀▀▀█▄██ ▄▄ ▄█▀▄ ▐▀▀▄ ▐█· ▐█▌    ▄▀▀▀█▄ ██▀·▄█▀▀█ ▐█ ▌▐▌▐█·▐█ ▌▐▌▐█·▐▀▀▪▄▐▀▀▄ 
echo [38;2;153;255;153m ██. ██ ▐█▌▐█▄▪▐█▐███▌▐█▌.▐▌▐█•█▌██. ██     ▐█▄▪▐█▐█▪·•▐█ ▪▐▌██ ██▌▐█▌██ ██▌▐█▌▐█▄▄▌▐█•█▌
echo [38;2;51;255;51m ▀▀▀▀▀• ▀▀▀ ▀▀▀▀ ·▀▀▀  ▀█▄▀▪.▀  ▀▀▀▀▀▀•      ▀▀▀▀ .▀    ▀  ▀ ▀▀  █▪▀▀▀▀▀  █▪▀▀▀ ▀▀▀ .▀  ▀
echo.
set /p webhook=Enter the webhook URL: 
curl --head --silent --fail "%webhook%" >nul 2>&1
if %errorlevel% neq 0 (
echo [38;2;144;238;144m╔════════════════════════════════════════════════════════════════════════════════╗
echo ║       [38;2;255;99;71mERROR: Failed to connect to the webhook. The webhook might not be real. [38;2;144;238;144m ║
echo [38;2;144;238;144m╚════════════════════════════════════════════════════════════════════════════════╝
  pause
  goto menu
)
set /p message=Enter the message to send: 
set /p count=Enter the number of times to send the message:
echo [38;2;144;238;144m╔══════════════════════════════╗ 
echo ║[38;2;144;238;144mConnecting to the webhook     ║
echo [38;2;144;238;144m╚══════════════════════════════╝
timeout /t 5 >nul
echo.
setlocal enabledelayedexpansion
for /l %%i in (1,1,%count%) do (
  set /a counter=%%i
  <nul set /p "=[?]Connection up. Sending messages"
  curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"!message!\"}" !webhook! >nul 2>&1
  if %errorlevel% neq 0 (
    echo.
    echo [38;2;255;99;71mError: Failed to connect to the webhook. The webhook might not be real
    pause
    goto menu
  )
  echo.
)
endlocal
echo [38;2;144;238;144m╔════════════════════════════════════╗
echo ║        [38;2;144;238;144mMessages sent               ║
echo [38;2;144;238;144m╚════════════════════════════════════╝
pause
goto menu

:port_manager
cls
echo [38;2;51;255;51m ██████╗  ██████╗ ██████╗ ████████╗███████╗
echo [38;2;51;255;51m ██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝
echo [38;2;153;255;153m ██████╔╝██║   ██║██████╔╝   ██║   ███████╗
echo [38;2;51;255;51m ██╔═══╝ ██║   ██║██╔══██╗   ██║   ╚════██║
echo [38;2;153;255;153m ██║     ╚██████╔╝██║  ██║   ██║   ███████║
echo [38;2;51;255;51m ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝
                                          
echo.
set /p action=open or close ports? (open--close) 

if /i "%action%"=="open" (
  goto OPENPORT
) else if /i "%action%"=="close" (
  goto CLOSEPORT
) else (
  echo [38;2;255;99;71mERROR
  pause
  goto menu
)

:OPENPORT
cls
echo [38;2;144;238;144m╔════════════════════════════════════╗
echo ║        [38;2;144;238;144mOpening PORT                ║
echo [38;2;144;238;144m╚════════════════════════════════════╝
set /p port=enter port to open
echo Opening port %port%
netsh advfirewall firewall add rule name="Open Port %port%" dir=in action=allow protocol=TCP localport=%port%
echo [38;2;144;238;144mPort %port% opened successfully.
pause
goto menu

:CLOSEPORT
cls
echo [38;2;144;238;144m╔════════════════════════════════════╗
echo ║        [38;2;144;238;144mClosing PORT                ║
echo [38;2;144;238;144m╚════════════════════════════════════╝
set /p port=Enter port to close
echo Closing port %port%
netsh advfirewall firewall delete rule name="Open Port %port%" dir=in protocol=TCP localport=%port%
echo [38;2;144;238;144mPort %port% closed successfully
pause
goto menu

:phone
cls
echo [38;2;229;255;229m╔════════════════════════════════════╗
echo ║       [38;2;229;255;229mPhone Number Lookup          ║
echo [38;2;229;255;229m╚════════════════════════════════════╝

set /p phone=enter first of country code


set "US=1"
set "CA=1"
set "GB=44"
set "FR=33"
set "DE=49"
set "IN=91"
set "SE=46"
set "AU=61"
set "JP=81"
set "CN=86"
set "BR=55"
set "RU=7"
set "ZA=27"
set "MX=52"
set "KR=82"
set "IT=39"
set "ES=34"
set "NL=31"
set "BE=32"
set "CH=41"
set "AR=54"
set "CL=56"
set "CO=57"
set "PE=51"
set "PH=63"
set "TH=66"
set "SG=65"
set "MY=60"
set "ID=62"
set "NZ=64"
set "IE=353"
set "DK=45"
set "NO=47"
set "FI=358"
set "PL=48"
set "HU=36"
set "CZ=420"
set "RO=40"
set "GR=30"


setlocal enabledelayedexpansion
set "prefix=!phone:~0,3!" 
set "shortprefix=!phone:~0,2!"  


if "%prefix%"=="070" (
    echo The phone number is from Sweden.
) else if "%prefix%"=="076" (
    echo The phone number is from Sweden.
) else if "%prefix%"=="46" (
    echo The phone number is from Sweden.
) else if "%shortprefix%"=="1" (
    echo The phone number is from the US or Canada.
) else if "%prefix%"=="44" (
    echo The phone number is from the UK.
) else if "%prefix%"=="33" (
    echo The phone number is from France.
) else if "%prefix%"=="49" (
    echo The phone number is from Germany.
) else if "%prefix%"=="91" (
    echo The phone number is from India.
) else if "%prefix%"=="61" (
    echo The phone number is from Australia.
) else if "%prefix%"=="81" (
    echo The phone number is from Japan.
) else if "%prefix%"=="86" (
    echo The phone number is from China.
) else if "%prefix%"=="55" (
    echo The phone number is from Brazil.
) else if "%shortprefix%"=="7" (
    echo The phone number is from Russia.
) else if "%prefix%"=="27" (
    echo The phone number is from South Africa.
) else if "%prefix%"=="52" (
    echo The phone number is from Mexico.
) else if "%prefix%"=="82" (
    echo The phone number is from South Korea.
) else if "%prefix%"=="39" (
    echo The phone number is from Italy.
) else if "%prefix%"=="34" (
    echo The phone number is from Spain.
) else if "%prefix%"=="31" (
    echo The phone number is from the Netherlands.
) else if "%prefix%"=="32" (
    echo The phone number is from Belgium.
) else if "%prefix%"=="41" (
    echo The phone number is from Switzerland.
) else if "%prefix%"=="54" (
    echo The phone number is from Argentina.
) else if "%prefix%"=="56" (
    echo The phone number is from Chile.
) else if "%prefix%"=="57" (
    echo The phone number is from Colombia.
) else if "%prefix%"=="51" (
    echo The phone number is from Peru.
) else if "%prefix%"=="63" (
    echo The phone number is from the Philippines.
) else if "%prefix%"=="66" (
    echo The phone number is from Thailand.
) else if "%prefix%"=="65" (
    echo The phone number is from Singapore.
) else if "%prefix%"=="60" (
    echo The phone number is from Malaysia.
) else if "%prefix%"=="62" (
    echo The phone number is from Indonesia.
) else if "%prefix%"=="64" (
    echo The phone number is from New Zealand.
) else if "%prefix%"=="353" (
    echo The phone number is from Ireland.
) else if "%prefix%"=="45" (
    echo The phone number is from Denmark.
) else if "%prefix%"=="47" (
    echo The phone number is from Norway.
) else if "%prefix%"=="358" (
    echo The phone number is from Finland.
) else if "%prefix%"=="48" (
    echo The phone number is from Poland.
) else if "%prefix%"=="36" (
    echo The phone number is from Hungary.
) else if "%prefix%"=="420" (
    echo The phone number is from the Czech Republic.
) else if "%prefix%"=="40" (
    echo The phone number is from Romania.
) else if "%prefix%"=="30" (
    echo The phone number is from Greece.
) else (
    echo Unknown country code.
)

pause
goto menu

:detect
cls
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████  
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████      
echo [38;2;0;255;0m██████╗ ███████╗████████╗███████╗ ██████╗████████╗    ██╗      █████╗ ███╗   ██╗ ██████╗ ██╗   ██╗ ██████╗ ███████╗
echo [38;2;51;255;51m██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝    ██║     ██╔══██╗████╗  ██║██╔════╝ ██║   ██║██╔════╝ ██╔════╝
echo [38;2;102;255;102m██║  ██║█████╗     ██║   █████╗  ██║        ██║       ██║     ███████║██╔██╗ ██║██║  ███╗██║   ██║██║  ███╗█████╗  
echo [38;2;153;255;153m██║  ██║██╔══╝     ██║   ██╔══╝  ██║        ██║       ██║     ██╔══██║██║╚██╗██║██║   ██║██║   ██║██║   ██║██╔══╝  
echo [38;2;204;255;204m██████╔╝███████╗   ██║   ███████╗╚██████╗   ██║       ███████╗██║  ██║██║ ╚████║╚██████╔╝╚██████╔╝╚██████╔╝███████╗
echo [38;2;229;255;229m╚═════╝ ╚══════╝   ╚═╝   ╚══════╝ ╚═════╝   ╚═╝       ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝
                                                                                                                   
echo                                         Drag your EXE file here
set /p exe_file=".


if not exist "%exe_file%" (
    echo ERROR
    pause
    goto main_menu
)


echo    [38;2;0;255;0m▄████████  ▄█   ▄█          ▄████████       ▄█  ███▄▄▄▄      ▄████████  ▄██████▄  
echo   [38;2;51;255;51m███    ███ ███  ███         ███    ███      ███  ███▀▀▀██▄   ███    ███ ███    ███ 
echo   [38;2;51;255;51m███    █▀  ███▌ ███         ███    █▀       ███▌ ███   ███   ███    █▀  ███    ███ 
echo  [38;2;51;255;51m▄███▄▄▄     ███▌ ███        ▄███▄▄▄          ███▌ ███   ███  ▄███▄▄▄     ███    ███ 
echo [38;2;102;255;102m▀▀███▀▀▀     ███▌ ███       ▀▀███▀▀▀          ███▌ ███   ███ ▀▀███▀▀▀     ███    ███ 
echo   [38;2;153;255;153m███        ███  ███         ███    █▄       ███  ███   ███   ███        ███    ███ 
echo   [38;2;204;255;204m███        ███  ███▌    ▄   ███    ███      ███  ███   ███   ███        ███    ███ 
echo   [38;2;229;255;229m███        █▀   █████▄▄██   ██████████      █▀    ▀█   █▀    ███         ▀██████▀  
       [38;2;229;255;229m           ▀                                                                  
for %%A in ("%exe_file%") do echo File: %%~nxA
for %%A in ("%exe_file%") do echo Size: %%~zA bytes
for %%A in ("%exe_file%") do echo Created: %%~tA
for %%A in ("%exe_file%") do echo Last Modified: %%~tA



findstr /i /c:"pyinstaller" "%exe_file%" >nul && echo Detected: Python executable (likely PyInstaller)
findstr /i /c:"AutoIt" "%exe_file%" >nul && echo Detected: AutoIt script converted to EXE
findstr /i /c:"gcc" "%exe_file%" >nul && echo Detected: Likely C/C++ compiled with GCC
findstr /i /c:"Mingw" "%exe_file%" >nul && echo Detected: C/C++ compiled with MinGW
findstr /i /c:".NET" "%exe_file%" >nul && echo Detected: .NET executable (C#, VB.NET, etc.)
findstr /i /c:"Inno Setup" "%exe_file%" >nul && echo Detected: Inno Setup installer EXE
findstr /i /c:"nuitka" "%exe_file%" >nul && echo Detected: Python executable compiled with Nuitka


echo Analysis complete.
pause
goto menu

:ip
cls
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████  
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo  [38;2;51;255;51m▄█     ▄███████▄       ▄█  ███▄▄▄▄      ▄████████  ▄██████▄  
echo [38;2;51;255;51m███    ███    ███      ███  ███▀▀▀██▄   ███    ███ ███    ███ 
echo [38;2;51;255;51m███▌   ███    ███      ███▌ ███   ███   ███    █▀  ███    ███ 
echo [38;2;102;255;102m███▌   ███    ███      ███▌ ███   ███  ▄███▄▄▄     ███    ███ 
echo [38;2;153;255;153m███▌ ▀█████████▀       ███▌ ███   ███ ▀▀███▀▀▀     ███    ███ 
echo [38;2;204;255;204m███    ███             ███  ███   ███   ███        ███    ███ 
echo [38;2;229;255;229m███    ███             ███  ███   ███   ███        ███    ███ 
echo [38;2;229;255;229m█▀    ▄████▀           █▀    ▀█   █▀    ███         ▀██████▀  
                                                              
set /p ip="enter ip address "



curl "http://ipinfo.io/%ip%/json"


pause
goto menu

:user
set /p username=Enter the username you want to lookup: 
 
echo [94m╔═══════════════════════════════════════════════════════════════════════════════════════════════════╗
echo [94m║ .dP"Y8 888888    db    88""Yb  dP""b8 88  88     88""Yb 888888 .dP"Y8 88   88 88     888888 .dP"Y8║
echo [94m║ Ybo." 88__     dPYb   88__dP dP   " 88  88     88__dP 88__   Ybo." 88   88 88       88   Ybo."║
echo [94m║ o.Y8b 88""    dP__Yb  88"Yb  Yb      888888     88"Yb  88""   o.Y8b Y8   8P 88  .o   88   o.Y8b║
echo [94m║ 8bodP' 888888 dP""""Yb 88  Yb  YboodP 88  88     88  Yb 888888 8bodP' YbodP' 88ood8   88   8bodP'║
echo [94m╚═══════════════════════════════════════════════════════════════════════════════════════════════════╝ 
echo.
echo                [37m╔════════════════════════════════════════════════════════════
echo                ║[94mTikTok: [37mhttps://www.tiktok.com/@%username%
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mInstagram: [37mhttps://www.instagram.com/%username%             
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mFacebook: [37mhttps://www.facebook.com/%username%               
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mTwitter: [37mhttps://www.twitter.com/%username%                 
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mSteam: [37mhttps://steamcommunity.com/id/%username%             
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mYouTube: [37mhttps://www.youtube.com/user/%username%            
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mGitHub: [37mhttps://www.github.com/%username%                   
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mReddit: [37mhttps://www.reddit.com/user/%username%              
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mDiscord: [37mhttps://www.discord.com/%username%                 
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mSoundCloud: [37mhttps://soundcloud.com/%username%               
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mTwitch: [37mhttps://www.twitch.tv/%username%                   
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mSnapchat: [37mhttps://www.snapchat.com/add/%username%           
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mPinterest: [37mhttps://www.pinterest.com/%username%             
echo                [37m╚════════════════════════════════════════════════════════════
pause
goto :menu

:base
cls
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████  
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████   
echo [38;2;0;255;0m██████╗ ███████╗ ██████╗ ██████╗ ██████╗ ███████╗██████╗ 
echo [38;2;51;255;51m██╔══██╗██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔══██╗
echo [38;2;102;255;102m██║  ██║█████╗  ██║     ██║   ██║██║  ██║█████╗  ██████╔╝
echo [38;2;153;255;153m██║  ██║██╔══╝  ██║     ██║   ██║██║  ██║██╔══╝  ██╔══██╗
echo [38;2;204;255;204m██████╔╝███████╗╚██████╗╚██████╔╝██████╔╝███████╗██║  ██║
echo [38;2;229;255;229m╚═════╝ ╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
                                                         
echo enter
set /p b64_input=


for /f "delims=" %%i in ('powershell -NoProfile -Command "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('%b64_input%'))"') do set decoded_output=%%i

cls

echo Decoded Result:
echo %decoded_output%
pause
goto :menu

:scan
cls
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████  
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████   
echo       [38;2;0;255;0m)\.--.         )\.-.        /`-.        )\  )\       )\  )\       )\.---.        _/`-. 
echo      [38;2;51;255;51m(   ._.'       / .-._)     .' _  \      (  \/ /      (  \/ /      (   .-._(      )  _  \
echo       [38;2;102;255;102m`-.`.       (  .   _     (  '-' (       ) \ (        ) \ (        \  '-.       (  '-' (
echo      [38;2;153;255;153m._ (  \       ) '..' )     )   _  )     ( ( \ \      ( ( \ \        ) .-`        )  _ .'
echo     [38;2;204;255;204m(  '.)  )     (  .   (     (  /  ) \      ))  ) )      ))  ) )      (  ``-.      (  ' ) \
echo       [38;2;229;255;229m'._.__/       )/'._.'      )/    )/     (_/  \_(     (_/  \_(       ).--.(       )/   )/


set /p ipRange=enter ip to scan

echo %ipRange% | findstr /r /i /c:"^\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}$" >nul 2>&1
if %errorlevel% equ 0 (
    echo [38;2;51;255;51mScanning all ports on %ipRange% 
    nmap -p- -T4 -Pn -A %ipRange%
) else (
    echo [38;2;51;255;51mScanning top 100 ports on %ipRange% 
    nmap --top-ports 100 -T4 -Pn -A %ipRange%
)

if %errorlevel% neq 0 (
    echo [38;2;204;255;204mERROR
    pause
    goto scanIPRange
) else (
    echo [38;2;204;255;204mDONE
    pause
    goto menu
)

:ext
cls
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████  
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████    
echo [30m████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████                                                         
echo [38;2;102;255;102m▀███▀▀▀███            ██                           ██   
echo   [38;2;229;255;229m██    ▀█            ██                           ██   
echo   [38;2;0;255;0m██   █  ▀██▀   ▀██▀█████▀███▄███ ▄█▀██▄  ▄██▀████████ 
echo   [38;2;51;255;51m██████    ▀██ ▄█▀   ██    ██▀ ▀▀██   ██ ██▀  ██  ██   
echo   [38;2;51;255;51m██   █  ▄   ███     ██    █▓     ▄███▓█ █▓       ██   
echo   [38;2;102;255;102m█▓     ▄█   ▓▓██    █▓    █▓    █▓   ▓█ █▓▄    ▄ █▓   
echo   [38;2;153;255;153m▓▓   ▓  ▓   ▓▓█     ▓▓    ▓▓     ▓▓▓▓▒▓ ▓▓       ▓▓   
echo   [38;2;204;255;204m▓▓     ▓▓ ▓▓▀ ▓▓▓   ▓▓    ▓▒    ▓▓   ▒▓ ▓▒▓    ▓ ▓▓   
echo [38;2;229;255;229m▒ ▒▒▒▓▒ ▒ ▒▒▒    ▒▓▒  ▒▒▒ ▒ ▒▒▒   ▒▓▒ ▒ ▓▒ ▒ ▒ ▒   ▒▒▒ ▒
                                                        
                                                        


set /p exePath=drag the exe file here. after you did that the tool will close but then do it again for it to work

if "%exePath%"=="" goto menu
if not exist "%exePath%" (
    echo [38;2;255;0;0mERROR
    pause
    goto menu
)


if not exist "pyinstxtractor.py" (
    echo pyinstxtractor not found. DOWNLOADING
    powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/extremecoders-re/pyinstxtractor/master/pyinstxtractor.py' -OutFile 'pyinstxtractor.py'"
    if %errorlevel% neq 0 (
        echo ERORR FAILED https://github.com/extremecoders-re/pyinstxtractor and place it in the same directory as this script
        pause
        goto menu
    )
    

    echo WATING
    timeout /t 2 /nobreak >nul
)




echo Extracting source code from %exePath%...
python pyinstxtractor.py "%exePath%"

if %errorlevel% neq 0 (
    echo [38;2;255;0;0mERROR
    pause
    goto menu
) else (
    echo [38;2;51;255;51mExtraction complete.
    pause
    goto menu
)

goto :menu

:remove
cls
echo [38;2;51;255;51m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo [38;2;51;255;51m░        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo [38;2;51;255;51m▒   ▒▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo [38;2;51;255;51m▒   ▒▒▒▒   ▒▒▒▒▒▒   ▒▒▒▒▒    ▒   ▒   ▒▒▒▒▒   ▒▒▒▒▒   ▒▒▒▒▒   ▒▒▒▒   ▒▒▒▒▒  ▒    
echo [38;2;102;255;102m▓  ▓   ▓▓▓▓▓▓▓▓  ▓▓▓   ▓▓▓   ▓▓  ▓▓   ▓▓   ▓▓   ▓▓▓   ▓▓▓   ▓▓▓  ▓▓▓   ▓▓▓   ▓▓▓
echo [38;2;153;255;153m▓   ▓▓   ▓▓▓▓▓         ▓▓▓   ▓▓  ▓▓   ▓   ▓▓▓▓   ▓▓▓   ▓   ▓▓▓         ▓▓▓   ▓▓▓
echo [38;2;204;255;204m▓   ▓▓▓▓   ▓▓▓  ▓▓▓▓▓▓▓▓▓▓   ▓▓  ▓▓   ▓▓   ▓▓   ▓▓▓▓▓     ▓▓▓▓  ▓▓▓▓▓▓▓▓▓▓   ▓▓▓
echo [38;2;229;255;229m█   ██████   ███     ████    ██  ██   ████   █████████   ███████     ████    ███
echo [38;2;229;255;229m████████████████████████████████████████████████████████████████████████████████

set /p "webhookURL=Enter the Discord webhook URL to remove: "


echo.%webhookURL%>nul

echo Webhook URL removed successfully.

echo           [96m╔══════════╗
echo           [96m║  [37mRemove  [96m║
echo   [96m╔═══════[96m╚══════════╝════════╗
echo   [96m║         [37mWebhook           [96m║
echo   [96m╚══════╔═════════════╗══════╝
echo [96m╔════════╚═════════════╝═══════════╗
echo [96m║  [92m╔╦╗  [92m╦  [92m╔═╗  [92m╔═╗  [92m╔═╗  [92m╦═╗  [92m╔╦╗ [96m║
echo [96m║  [92m ║║  [92m║  [92m╚═╗  [92m║    [92m║ ║  [92m╠╦╝   [92m║║ [96m║
echo [96m║  [92m═╩╝  [92m╩  [92m╚═╝  [92m╚═╝  [92m╚═╝  [92m╩╚═  [92m═╩╝ [96m║
echo [96m╚══════════════════════════════════╝
pause
exit /b

:token
cls

echo  [38;2;51;255;51mTTTTTT      OOO      K  K     EEEE     N   N
echo    [38;2;102;255;102mTT       O   O     K K      E        NN  N
echo    [38;2;153;255;153mTT       O   O     KK       EEE      N N N
echo    [38;2;204;255;204mTT       O   O     K K      E        N  NN
echo    [38;2;229;255;229mTT        OOO      K  K     EEEE     N   N
                                             

                                                                                                                                                                  
set /p userid= Enter in somones discord id:
for /f %%i in ('powershell -NoProfile -Command "[Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes('%userid%'))"') do set encodedStr=%%i
echo.
echo Users first part of token : %encodedStr%
pause >nul
goto menu


:breach
cls
color 4
echo                       ┌───────┐   ╔════════════════════╗
echo                       │ ════ o│   ║                    ║
echo                       ├───────┤   ║                    ║
echo    ╔══════════════╗   │[■■■■]o│   ║                    ║
echo    ║              ║   ├───────┤   ║                    ║
echo    ║              ║   │       │   ╚════════╤══╤══════o═╝
echo    ║              ║   │       │─────┘  ____│__│____
echo    ║              ║   │       │─┐     /____________\
echo    ╚══════════════╝   └───────┘ │ ________________
echo   /::::::::::::::::\      │     └/::::::::::::::::\
echo  /:::::════════:::::\    /T\    /:::::════════:::::\
echo  ════════════════════    \_/    ════════════════════

set /p password=Enter a password to check for breaches:
for /f %%i in ('powershell -NoProfile -Command "$password = '%password%'; $sha1 = [System.Security.Cryptography.SHA1]::Create(); $hash = $sha1.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($password)); $hashedPassword = -join ($hash | ForEach-Object { $_.ToString('x2') }).ToUpper(); Write-Output $hashedPassword"') do set hashedPassword=%%i
set prefix=%hashedPassword:~0,5%
set suffix=%hashedPassword:~5%
powershell -NoProfile -Command "$prefix = '%prefix%'; $suffix = '%suffix%'; $url = 'https://api.pwnedpasswords.com/range/' + $prefix; $response = (Invoke-WebRequest -Uri $url).Content; if ($response -match $suffix) { Write-Host 'This password has been breached. It is not secure.' } else { Write-Host 'This password has not been breached. It is secure.' }"
pause
goto menu

:gen
cls
echo  [38;2;102;255;102m██▓███   ▄▄▄        ██████   ██████  █     █░ ▒█████   ██▀███  ▓█████▄ 
echo [38;2;0;255;0m▓██░  ██▒▒████▄    ▒██    ▒ ▒██    ▒ ▓█░ █ ░█░▒██▒  ██▒▓██ ▒ ██▒▒██▀ ██▌
echo [38;2;51;255;51m▓██░ ██▓▒▒██  ▀█▄  ░ ▓██▄   ░ ▓██▄   ▒█░ █ ░█ ▒██░  ██▒▓██ ░▄█ ▒░██   █▌
echo [38;2;102;255;102m▒██▄█▓▒ ▒░██▄▄▄▄██   ▒   ██▒  ▒   ██▒░█░ █ ░█ ▒██   ██░▒██▀▀█▄  ░▓█▄   ▌
echo [38;2;153;255;153m▒██▒ ░  ░ ▓█   ▓██▒▒██████▒▒▒██████▒▒░░██▒██▓ ░ ████▓▒░░██▓ ▒██▒░▒████▓ 
echo [38;2;204;255;204m▒▓▒░ ░  ░ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░░ ▓░▒ ▒  ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ ▒▒▓  ▒ 
echo [38;2;229;255;229m░▒ ░       ▒   ▒▒ ░░ ░▒  ░ ░░ ░▒  ░ ░  ▒ ░ ░    ░ ▒ ▒░   ░▒ ░ ▒░ ░ ▒  ▒ 
echo [38;2;229;255;229m░░         ░   ▒   ░  ░  ░  ░  ░  ░    ░   ░  ░ ░ ░ ▒    ░░   ░  ░ ░  ░ 
echo                [38;2;229;255;229m░  ░      ░        ░      ░        ░ ░     ░        ░    
echo                                                                  [38;2;229;255;229m░      
                                                                             
                                                                             
                                                                             


set /p "length=enter a length

setlocal enabledelayedexpansion
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_-+=[]{}|;:,.<>/?"
set "password="

for /l %%i in (1,1,%length%) do (
    set /a idx=!random! %% 87
    for /l %%j in (!idx!,1,!idx!) do (
        set "char=!chars:~%%j,1!"
        set "password=!password!!char!"
    )
)

echo Generated Password: %password%
pause
goto menu

:cc
cls
echo  ██████╗██████╗ ███████╗██████╗ ██╗████████╗     ██████╗ █████╗ ██████╗ ██████╗ 
echo ██╔════╝██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝    ██╔════╝██╔══██╗██╔══██╗██╔══██╗
echo ██║     ██████╔╝█████╗  ██║  ██║██║   ██║       ██║     ███████║██████╔╝██║  ██║
echo ██║     ██╔══██╗██╔══╝  ██║  ██║██║   ██║       ██║     ██╔══██║██╔══██╗██║  ██║
echo ╚██████╗██║  ██║███████╗██████╔╝██║   ██║       ╚██████╗██║  ██║██║  ██║██████╔╝
echo  ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝   ╚═╝        ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ 
echo.


set /p webhook_url=Enter [!] webhook


set /a BIN=400000+(%random% %% 100000)
set /a ACCOUNT=%random%%%1000000000
set EXP_MONTH=%random:~-2,2%
set EXP_YEAR=20%random:~-2,2%
set /a CVV=%random%%%900+100


setlocal enabledelayedexpansion
set message=**CREDIT CARD INFO**^nCard Number: %BIN%%ACCOUNT%^nExpiration Date: %EXP_MONTH%/%EXP_YEAR%^nCVV: %CVV%


echo SENDING [!] CARD TO WEBHOOK
curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"!message!\"}" %webhook_url% >nul 2>&1


if %errorlevel% neq 0 (
    echo.
    echo Error: [!]FAILED[!] 
    pause
    goto menu
)

echo SENDED [!]
endlocal
pause
goto menu

:info
start https://beta.snusbase.com/

goto menu





