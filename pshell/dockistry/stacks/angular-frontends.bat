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
echo "                                                                 "
D:
echo Yo!... forking front-end:




echo "-------------------------------"
echo "Setup options for Frontend UIX:"
echo "-------------------------------"
echo " * kitty - Angular/ Semantic UI
echo " * puppy - Angular/ Bootstrap
echo " * bunny - Angular/ Blur
echo " * hammy - Angular/ Altaire
echo "-------------------------------"
set /p ani="Perform which? (k/p/b/h): "


if "%ani%" == "k" goto kitty
if "%ani%" == "p" goto puppy
if "%ani%" == "b" goto bunny
if "%ani%" == "h" goto hammy




:kitty
chdir D:\Dockistry-Ng\dr-sem-lb-rt\client
make install
make data
make run
npm install -g hotel && hotel start
hotel add '.\node_modules\.bin\webpack-dev-server --host=localhost--port=8085 --progress --colors --devtool cheap-module-inline-source-map --hot --inline' -n lets.fork -p 8085
 
pause
:puppy
chdir D:\Dockistry-Ng\dr-sem-ui\
npm install
hotel add 'npm run test-dev' -n puppy.dev -p 8085
goto attmes

:bunny
chdir D:\Dockistry-Ng\dr-blu
npm install
npm run build
hotel add 'npm run test-dev' -n bunny.dev -p 8085
goto attmes

:hammy
:: npm install
:: bower install
chdir D:\Dockistry-Alt\altair_v2.5.0\admin\angular
hotel add "browser-sync start --server --port 3007 --files 'app/*.html' --files 'app/*.css'" -o app.log -n alt-samp.dev -p 3007

chdir D:\Angular-Working\alt
hotel add "browser-sync start --server --port 3005 --files 'app/*.html' --files 'app/*.css'" -o app.log -n hammy.dev -p 3005
hotel add "browser-sync start --server --port 3003 --files 'app/*.html' --files 'app/*.css'" -o app.log -n altaire-working.dev -p 3003

goto attmes

:attmes
if "%arc%" == "y" goto modyes
if "%arc%" == "n" goto modno

:modyes
chdir D:\Dockistry-Ng\dr-sem-lb-rt\server
slc arc
pause

:modno
pause




echo "finished .... ^.^"
