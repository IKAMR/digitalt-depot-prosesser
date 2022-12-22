# README_arkade5.md

2. Arkade 5
a. Målkatalog: ..\repository_operations\arkade5_vn.n.n.n\..
b. Knapp "Velg uttrekk"      Velg mappa med Noark 5 xml-filer, arkivuttrekk.xml m.m.
c. Knapp "Last inn uttrekk"  Laster inn valgt mappe med Noark 5-uttrekk over
d. Knapp "Start testing"
e. Skjermdump når test ferdig lagres som eks.: 1505_010_arkade5_v2.1.0.png

I) Uten PRONOM filanalyse fra Arkade 5:
f. Knapp "Vis rapport" åpner rapport i nettleser, lagres som f. eks.: 1505_010_arkade5_v2.1.0_rapport.pdf
   Mulige verktøy for å lage PDF/A: Adobe Acrobat, Libre Office, MS Word
g. Kopier midlertidige rapportfiler fra Arkade 5 fra den valgte arbeidskatalogen som ble valgt for programmet, eks.:
   D:\uttrekk-arkade\arkade-tmp\work\20200118151844-75cb68b0-186f-437f-ab78-ba5f72de4253\
   administrative_metadata\repository_operations\..
   arkade-log.xml lagres som 1505_010_arkade5_v2.1.0_rapport.xml
   report.html lagres som 1505_010_Arkade5_v2.1.0_rapport.html
   NB! Arkade sletter disse når program lukkes, så MÅ gjøres først!
h. Se over Arkade 5 testrapport og skrive notat i Analyse-dokument

II) Med PRONOM filanalyse fra Arkade 5:
i. Knapp "Opprette pakke" åpner dialog for Arkade 5 metadata
j. Valgfri knapp "Hent eksterne metadata" gjenbruker eksisterende metadata
   Velg en aktuell info.xml fil for å få autofyllt metadata
k. Fyll ut/korriger alle Arkade 5 metadata
l. Velg pakketype AIP
m. Valgfri kryss av "Inkluder formatinformasjon for dokumentfiler"
   Lager PRONOM filidentifikasjon for alle filer i Noark 5-uttrekket
n. Knapp "Opprett pakke" for å lage <sip uuid>.tar fil med rapporter og PRONOM filid-liste
o. Velg en mappe for <sip uuid>.tar og <sip uuid>.xml (info.xml)
p. Åpne <sip uuid>.tar i PKZIP eller 7zip og kopiere ut rapporter og PRONOM idfil
   \administrative_metadata\
      documentfile-formatinfo.csv
   \administrative_metadata\repository_operations\
      arkade-log.xml
	  report.html
q. Lagre rapporter og PRONOM idfil i arkiv-work arbeidsområde som f. eks.:
	..\repository_operations\arkade5_vn.n.n.n\
	   1505_010_arkade5_v2.1.0_rapport.xml
	   1505_010_arkade5_v2.1.0_rapport.html
	   1505_010_arkade5_v2.1.0_pronom.csv
r. Lag PIVOT-tabell av PRONOM idfil
   åpne .csv fil i Excel og lagre som 1505_010_arkade5_v2.1.0_pronom.xlsx
   
s. Se over Arkade 5 testrapport og skrive notat i Analyse-dokument
