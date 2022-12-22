REM siard-unzip_v1.1.bat

REM mask exit with REM when run ths .bat file
REM set back exit when done to prevent undwanted unpacking
REM exit

REM NO folder nor filenames can contain space below

REM Folder where the unzipped SIARD-structure is to be extracted
REM set _unzipfolder="D:\_demo-temp\006\sip_unzipped"
set _unzipfolder=D:\_demo-temp\006\sip_unzipped

REM Folder where the SIARD-file is located
REM set _siardfolder="D:\_demo-temp\006\sip\"
set _siardfolder=D:\_demo-temp\006\sip\

REM Filename of SIARD-file to be unzipped
REM set _siardfile="sakila_mysql5.6.35_scfc20.03.1583_int_zip64.2.1.80.siard"
set _siardfile=sakila_mysql5.6.35_scfc20.03.1583_int_zip64.2.1.80.siard

REM To be updated as newer version of Zip64 is installed
REM set _zip64root="C:\prog\siardsuite\zip64-2.1.82\"
set _zip64root=C:\prog\siardsuite\zip64-2.1.82\

REM Fixed parameter targeting the java executing file
REM set _zip64path="zip64\lib\zip64.jar"
set _zip64path=zip64\lib\zip64.jar

REM No logfile - Conole window logs 
REM java -jar %_zip64root%%_zip64path% x -d=%_unzipfolder% %_siardfolder%%_siardfile%

REM Outputs conole log to external file next to the SIARD-file
java -jar %_zip64root%%_zip64path% x -d=%_unzipfolder% %_siardfolder%%_siardfile% > %_siardfolder%%_siardfile%.log

pause
