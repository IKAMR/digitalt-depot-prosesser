REM Lag sjekksum SHA256 for pakke TAR-fil
REM
REM navn: lag-sjekksum-sha256_tar
REM versjon: 2018-11-06
REM

REM marker vekk exit med REM foran før kjøring
exit

set _sourcedir=
set _sourcefile=<uuid>.tar

certutil -hashfile %_sourcedir%%_sourcefile% sha256 > %_sourcedir%%_sourcefile%.sha256_tar.txt

pause
