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
echo Yo! ... Starting the locally shared RethinkDB NOSQL service
D:\Dockistry-Db\rethinkdb\rethinkdb.exe -d D:\Dockistry-Db\rethinkdb\rethinkdb_data
pause
