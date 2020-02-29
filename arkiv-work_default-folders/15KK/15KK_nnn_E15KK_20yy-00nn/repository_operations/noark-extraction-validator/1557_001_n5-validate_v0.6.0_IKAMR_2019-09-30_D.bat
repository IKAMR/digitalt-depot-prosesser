REM *** Documaster Noark Extraction Validator
REM v0.6.0_IKAMR_2019-09-30
REM .bat revisjon: 2019-12-12

exit

REM *** Input & Output folders to be set again for each new extraction this computer
set _extraction-path=D:\arkiv-work\1557\1557_001_E-1557-2018-0001\content\sip\content
set _output-dir=D:\arkiv-work\1557\1557_001_E-1557-2018-0001\repository_operations\noark-extraction-validator

REM *** Noark Version Number
REM ** Supporting Noark 5 v3.1 | v4.0 | v5.0
REM ** Possible values: noark53, noark54, noark55
set _noark-ver=noark53

REM *** xsd-schemas to use in the validation
REM *** May be used to filter out repetetitive error in a system N5-extraction
REM *** f. ex. as second run of the validator when a large number of repetitive errors are spamming the results
REM set _xsd-schemas=
REM set _xsd-schemas=-custom-schema-location %_extraction-path%
set _xsd-schemas=-custom-schema-location D:\arkiv-work\1557\1557_001_E-1557-2018-0001\content\schema\noark5_v3.1\xsd-n5_v3.1_mod-1

REM *** Output Type
REM *** Possible values: XML, EXCEL_XLS, EXCEL_XLSX (default)
REM set _output-type=
REM set _output-type=-output-type XML
set _output-type=-output-type EXCEL_XLSX -output-type XML

REM *** Documaster Noark 5 Validator version
REM set _java-jar=noark-extraction-validator-0.1.0.jar
set _java-jar=noark-extraction-validator-0.6.0_2019-09-30.jar

REM *** Documaster Noark 5 Validator Path
REM *** to be set only first time or if changes on those occur
set _dn5v="C:\prog\noark-extraction-validator-0.6.0_2019-09-30"

REM *** Java SDK, Noark Extraction Validator version & Noark version
REM *** to be set only first time or if changes on those occur

REM Oracle JDK
set _jdk="C:\Program Files\Java\jdk1.8.0_191\bin\java"
REM set _jdk="C:\Program Files\Java\jdk1.8.0_111\bin\java"

REM Open JDK
REM set _jdk="C:\Program Files\openjdk-12.0.2_windows-x64_bin\jdk-12.0.2\bin\java"

REM *** Optional parameters

REM *** Ignore Non-Compliant XML
REM *** that is to NOT demand xml-file to compy to its xsd-schema
REM *** Should be avoided if possible!
REM *** Mark out with REM in from of ONE of the TWO lines below!

REM *** Parameter 1
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


REM *** Documaster Noark 5 Validator call
REM *** 

REM %_jdk% -jar %_java-jar% %_noark-ver% %_output-type% %_xsd-schemas% -extraction "%_extraction-path%" -output-dir "%_out%" %_param-1% > "%_out%\dn5v_log.txt"
%_jdk% -jar %_java-jar% %_noark-ver% %_output-type% %_xsd-schemas% -extraction "%_extraction-path%" -output-dir "%_out%" %_param-1%


pause
