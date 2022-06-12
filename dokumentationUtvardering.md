# Dokumentation och utvärdering för Inlämningsuppgift: Notes

<br>

| Användarnamn och lösenord: admin

<br>

Hej Janne!

Som du ser så har jag byggt den här applikationens front i vanilla javascript , jag får känslan av att man inte kommer att använda det speciellt mycket i ett senare arbetsliv då det mestadels verkar vara ramverk och bibliotek som gäller!

Det som verkligen var något nytt och gav mig mycket var att använda "window.location" med params för att skickas till en annan sida och kunna få med data, i det här fallet skickar jag med "id" som jag sedan kör en fetch på och visar det valda dokumentet.
Jag har valt att med localstorage bestämma om en användare är med booleanen "isAuth" inloggad eller inte, jag kollar vid varje steg i appen om man fortfarande är inloggad.

Något ja la lite tid på var då att min blir skickad till en ny vy där man kan få en bra överblickav sitt dokument med funktionen att skriva ut, något som var en utmaning men väldigt simpelt när man kommit på det!

En av svårigheterna var såklart att få "TinyMCE" att fungera, jag hade problem att skriva till dess textarea men fick det till sist att fungera, jag upptäckte tillslut att jag inte körde koden i rätt ordning.

Upplägget på back-enden har varit som tidigare övningar och det som du och Victor gått igenom och lärt oss, egentligen inget konstigt eller nytt.
Jag använder en form av soft-delete genom att sätta en "tinyinit" från NULL till 1, alla med 1 som värde för "softDelete" hämtas inte från databasen.

För lösenordet har jag valt att ange utanför routen, men med hjälp av npm-paketet Bcrypt krypterat det med 10 salt-omgånger då jag uppfattar det som standard. Jag kollar sedan inputet från fetchen mot det hashade lösenordet.

<br>

#

<br>
/ Joel Hägg
