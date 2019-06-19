REM Lag sjekksum SHA256 for pakke TAR-fil
REM
REM navn: lag-sjekksum-sha256_tar
REM versjon: 2018-11-06
REM

REM marker vekk exit med REM foran før kjøring
exit

set _sourcedir=
set _sourcefile=<uuid>.tar
REM set _sourcefile=<uuid>.tar

REM certutil -hashfile %_sourcedir%%_sourcefile% sha256 > %_sourcedir%%_sourcefile%.create.sha256.txt
certutil -hashfile %_sourcedir%%_sourcefile% md5 > %_sourcedir%%_sourcefile%.create.md5.txt

pause
