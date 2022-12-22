REM mask exit with REM when run ths .bat file
REM set back exit when done to prevent undwanted unpacking

exit

java -jar "C:\prog\siardsuite\zip64-2.1.82\zip64\lib\zip64.jar" x "-d=C:\uttrekk-dbptk-desktop\demo\testdb04\testdb04_dbptk-desktop-2.5.4_int\unzipped" "C:\uttrekk-dbptk-desktop\demo\testdb04\testdb04_dbptk-desktop-2.5.4_int\testdb04_dbptk-desktop-2.5.4_int.siard"

pause
