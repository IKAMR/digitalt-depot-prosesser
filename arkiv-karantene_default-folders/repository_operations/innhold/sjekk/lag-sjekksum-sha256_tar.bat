REM Lag sjekksum SHA256

exit

set _sourcedir=
set _sourcefile=<uuid>.tar

certutil -hashfile %_sourcedir%%_sourcefile% sha256 > %_sourcedir%%_sourcefile%.sha256_tar.txt

pause
