exit

REM Lag sjekksum SHA256

set _sourcedir=
set _sourcefile=ba5b6729-c129-4772-ad09-4ab2fd556794.zip

certutil -hashfile %_sourcedir%%_sourcefile% sha256 > %_sourcedir%%_sourcefile%.sha256.txt

pause
