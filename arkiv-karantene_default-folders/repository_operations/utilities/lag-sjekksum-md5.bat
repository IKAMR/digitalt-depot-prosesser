REM Lag sjekksum MD5
REM
REM navn: lag-sjekksum-md5
REM versjon: 2020-03-21
REM

REM marker vekk exit med REM foran før kjøring
exit

set _sourcedir=
set _sourcefile=<filename>
REM set _sourcefile=<filename>


certutil -hashfile %_sourcedir%%_sourcefile% md5 > %_sourcedir%%_sourcefile%.create.md5.txt

pause
