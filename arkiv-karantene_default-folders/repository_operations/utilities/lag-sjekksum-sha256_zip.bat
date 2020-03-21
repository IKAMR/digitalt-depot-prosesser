REM Lag sjekksum SHA256 for pakke kryptert ZIP-fil
REM
REM navn: lag-sjekksum-sha256_zip
REM versjon: 2018-11-06
REM

REM marker vekk exit med REM foran før kjøring
exit

set _sourcedir=
set _sourcefile=<uuid>.zip

certutil -hashfile %_sourcedir%%_sourcefile% sha256 > %_sourcedir%%_sourcefile%.sha256_zip.txt

pause
