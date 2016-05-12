@echo off
echo " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "      ||`           '||               ||                         "
echo "      ||             ||     ''        ||                         "
echo "  .|''|| .|''|,.|'', || //` || (''''''||'' '||''|'||  ||`        "
echo "  ||  || ||  ||||    ||<<   ||  `'')  ||    ||    `|..||         "
echo "  `|..||.`|..|'`|..'.|| \\..||.`...'  `|..'.||.       ||         "
echo "                                                   ,  |'         "
echo "  ~ Fullstack strategies by forking pterodactyls    ''           "
echo "                                                                 "



echo "> ---- pTero Hosts Management for Windows Powershell ------------ "


Powershell -executionpolicy remotesigned -File  "D:\PowerModules\ptero-etc-hosts.ps1" show


set /p etchost="Modify /etc/host entries? (y/n): "
set /p hot="Install Hotel for .dev domains?  (y/n)"

if "%etchost%" == "y" goto eyes
if "%etchost%" == "n" goto eno

:eyes
set /p wr="Write ( Example: add 127.0.0.1:8085  lets.fork || remove kitten.dev ): "
Powershell -executionpolicy remotesigned -File  "D:\PowerModules\ptero-etc-hosts.ps1" %wr%
Powershell -executionpolicy remotesigned -File  "D:\PowerModules\ptero-etc-hosts.ps1" show
goto stack




if "%hot%" == "y" goto hotyes
if "%hot%" == "n" goto hotno

:hotyes
npm -v
node -v
ipconfig /flushdns
echo pTero Yes-Hotel installed and DNS flushed & goto stack

:hotno
pause
echo pTero No-Hotel or NPM mods & goto stack
echo Etc-Hosts-None & goto stack

:eno
echo Etc-Hosts-None & goto stack

:stack
set /p omgrt="Launch rethink/loop/aurelia stack? (y/n): "
if "%omgrt%" == "y" goto yesrethink
if "%omgrt%" == "n" goto norethink

:yesrethink
Powershell -executionpolicy remotesigned -File  "D:\PowerModules\stacks\rethink-loopback-aurelia.ps1"
PAUSE
goto endwell

:norethink
echo pTero skipped creating the stack db, front-end, and strong-loop services due to your selection.
PAUSE
goto endwell

:endwell
pause
echo  ending...

echo "                                                                 "
echo "                                                                 "
echo " 143 150 162 151 163 164 157 160 150 145 162  150 157 147 141 156"
echo ""
echo "  _  /_ _. __/__  _  /_ _  _  /_ _  _  _  _                      "
echo " /_ / ///_\ / /_//_// //_'/  / //_//_//_|/ /                     "
echo "                /                  _/                            "
