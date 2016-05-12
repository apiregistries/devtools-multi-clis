@echo off
echo "                                          "
echo "                                          "
echo "          <\              _               "
echo "          \\          _/{                 "
echo "   _       \\       _-   -_               "
echo " /{        / `\   _-     - -_             "
echo "~  =      ( @  \ -        -  -_           "
echo "-   ~-_   \( =\ \           -  -_         "
echo "       ~_ | 1 :\ \      _-~-_ -  -_       "
echo "         ~  |V: \ \  _-~     ~-_-  -_     "
echo "         /  | :  \ \            ~-_- -_   "
echo "._      {   | : _-``               ~- _-_ "
echo "  ~-_  {   : \:}                          "
echo "      ~-_\  :  /                          "
echo "         \ : /__                          "
echo "        //`Y'--\\                         "
echo "       <+       \\                        "
echo "        \\      WWW                       "
echo "        XvX                               "
echo "                                          "
echo " a platform Translation Engine            "
echo "   for  - reducing overhead -             "
echo .
pause

echo Hit any key to launch the Strongloop JSONA-API UI
pause
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://localhost:3000/explorer" --profile-directory="Profile 1"

echo Hit any key to launch the Launch Strongloop Arc
pause
chdir D:\Dockistry-Ng\dr-sem-lb-rt\server

echo Hit any key to launch the Launch RethinkDB UI
pause
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://localhost:8080" --profile-directory="Profile 1"

echo Hit any key to launch the Launch Webpack Dev Server
pause
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://localhost:8085" --profile-directory="Profile 1"

echo Hit any key to launch the Launch Hotel Dev Service
pause
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://localhost:2000" --profile-directory="Profile 1"
