REM *** Documaster Noark Extraction Validator
exit

REM *** Input & Output folders to be set again for each new extraction this computer
set _extraction-path=D:\arkiv-work\1557\1557_1_E-1557-2018-0001\content\sip\content
// set _extraction-path=E:\uttrekk-n5\02
set _output-dir=D:\arkiv-work\1557\1557_1_E-1557-2018-0001\repository_operations\noark-extraction-validator
// set _output-dir=E:\uttrekk-n5\02-rapport

REM *** Noark Version Number
REM *** xsd-schemas to use in the validation
set _noark-ver=noark53

REM *** Documaster Noark 5 Validator version
REM set _java-jar=noark-extraction-validator-0.1.0.jar
set _java-jar=noark-extraction-validator-0.2.0-SNAPSHOT.jar

REM *** Documaster Noark 5 Validator Path
REM *** to be set only first time or if changes on those occur
set _dn5v="C:\prog\noark-extraction-validator"

REM *** Java SDK, Noark Extraction Validator version & Noark version
REM *** to be set only first time or if changes on those occur
set _jdk="C:\Program Files\Java\jdk1.8.0_191\bin\java"

REM *** Optional parameters

REM *** Ignore Non-Compliant XML
REM *** that is to NOT demand xml-file to compy to its xsd-schema
REM *** Should be avoided if possible!
REM *** Mark out with REM in from of ONE of the TWO lines below!

REM set _param-1=
set _param-1=-ignore-non-compliant-xml

REM *** Additional parameters may be added like this
REM *** <space> %_param-2% is to be added at java execution line at bottom if used
REM set _param-2=""
REM set _param-2="-another-parameter"

REM *** set date-time stamp:
for /f "tokens=1-3,5-8 delims=/:. " %%a in ("%DATE%") do (set _d=%%c%%b%%a)
for /f "tokens=1-3 delims=:, " %%a in ("%TIME%") do (set _t=%%a%%b%%c)
set _dt=%_d%_%_t%

REM *** Datetime Subdir or not

REM *** NO subdir
REM *** REM in front of this line if *** Subdir is used below
REM set _out=%_output-dir%

REM *** Subdir
REM *** REM in front of those two line if *** No subdir is used above
mkdir %_output-dir%\%_dt%
set _out=%_output-dir%\%_dt%

%_jdk% -jar %_java-jar% %_noark-ver% -extraction "%_extraction-path%" -output-dir "%_out%" %_param-1% > "%_out%\dn5v_log.txt"

pause
