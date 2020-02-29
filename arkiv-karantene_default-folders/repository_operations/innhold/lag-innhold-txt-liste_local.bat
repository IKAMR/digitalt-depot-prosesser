REM IKAMR depot lag innhold.txt av katalog med undermapper
REM
REM navn: lag-innhold.txt
REM versjon: 2020-02-15
REM "local" betyr mappa .bat fil er i med alle undermapper
REM

REM marker vekk exit med REM foran før kjøring
exit

REM *** set date-time stamp:
for /f "tokens=1-3,5-8 delims=/:. " %%a in ("%DATE%") do (set _d=%%c%%b%%a)
for /f "tokens=1-3 delims=:, " %%a in ("%TIME%") do (set _t=%%a%%b%%c)
set _dt=%_d%%_t%

REM innhold kataloger
REM dir * /s /on > innhold-katalog_%_dt%.txt

REM innhold liste
dir * /s /b > innhold-liste_%_dt%.txt

pause
exit

REM /d Samme som fullt listeformat, men filer oppføres i kolonner.
REM /w Bruker fullt listeforma

REM C:\uttrekk-siard>dir /?
REM Viser en liste over filer og undermapper i en mappe.

REM DIR [stasjon:][bane][filnavn] [/A[[:]attributter]] [/B] [/C] [/D] [/L] [/N]
REM [/O[[:]sortering]] [/P] [/Q] [/R] [/S] [/T[[:]tidsfelt]] [/W] [/X] [/4]

REM   [stasjon:][bane][filnavn]
REM                Angir stasjon, mappe og/eller filer for listen.

REM   /A          Viser filer med angitte attributter.
REM   attributter  D  Mapper                      R  Skrivebeskyttede filer
REM                H  Skjulte filer               A  Arkiveringsklare filer
REM                S  Systemfiler                 I  Ikke innholdsindekserte filer
REM                L  Reanalyseringspunkter       -  Prefiks som betyr "ikke"
REM   /B          Bruker rent filnavnformat (uten overskrift og sammendrag).
REM   /C          Viser tusenskilletegn i filstørrelsene. Dette er standard-
REM               innstillingen. Bruk /-C for å deaktivere visning av skilletegn.
REM   /D          Samme som fullt listeformat, men filer oppføres i kolonner.
REM   /L          Bruker små bokstaver.
REM   /N          Nytt, langt listeformat der filnavnene vises helt til høyre.
REM   /O          List opp filene i sortert rekkefølge.
REM   sortering    N  Etter navn (alfabetisk)    S  Etter størrelse (minste først)
REM                E  Etter filtype (alfabetisk) D  Etter dato (eldste først)
REM                G  Gruppemapper først         -  Prefiks for omvendt rekkefølge
REM   /P          Stopper etter hvert hele skjermbilde.
REM   /Q          Viser hvem som er eier av filen.
REM   /R          Viser alternative datastrømmer av filen.
REM   /S          Viser alle filer i angitt mappe og alle undermapper.
REM   /T          Styrer hvilket klokkeslettfelt som vises eller brukes til å
REM               sortere tidsfelt
REM                C  Opprettet
REM                A  Sist lest
REM                W  Sist skrevet
REM   /W          Bruker fullt listeformat.
REM   /X          Viser korte navn som er laget for filnavn som ikke er på
REM               8+3 bokstaver. Formatet er det samme som for /N med det korte
REM               navnet satt inn foran det lange navnet. Hvis det ikke finnes
REM               et kort navn, brukes mellomrom i stedet.
REM   /4          Viser firesifrede årstall.

REM Brytere kan forhåndsinnstilles i miljøvariabelen DIRCMD. Overstyr forhåndsinn-
REM stilte brytere ved å sette en bindestrek (-) foran, for eksempel /-W.
