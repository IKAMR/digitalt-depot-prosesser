# README_innhold.md

Del II) Antiviruskontroll, validering og utpakking tar 

1. Antiviruskontroll av: ..\15KK_nnn_E-15KK-yyyy-00nn\.. resultat som bildefil i ..\repository_operations\karantene\..
   ..\repository_operations\karantene\15KK_nnn_ESET_yyyy-mm-dd.png

2. Valider sjekksum for .tar fil med sjekksum i info.xml
   Generer sjekksum med .bat fil:  ..\repository_operations\innhold\<filnavn>
   Hvis kontroll i resultatfil.

3. Pakke ut .tar fil: ..\content\sip\..
   Bruk PKZip og lagre loggfiler i ..\repository_operations\innhold\.. som 15KK_nnn_tar-summary.log og 15KK_nnn_tar-all.log

4. Flytt utpakket innhold i ..\content\sip\<uuid>\.. Opp til ..\content\sip\.. og slett den no tomme mappe ..\cont\sip\<uuid>\..

Del III) Validering Arbeidsområde

1. Innledende kopiering oppsett

a. Standard arbeidskataloger med underkataloger kopieres fra: 
   ..depot\digitalt-depot-prosesser\arkiv-work_default-folders\15KK\15KK_nnn_E-15kk-20yy-00nn\..
