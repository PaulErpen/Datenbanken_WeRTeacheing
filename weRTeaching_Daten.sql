--weRTeaching
--SQL Script
--Paul Erpenstein, Thomas Fregin, Maximillian Waiblinger

--Formate aendern
alter session set nls_date_format = 'yyyy-mm-dd';
alter session set nls_timestamp_format = 'yyyy-mm-dd hh24:mi:ss';

--fuellen mit Daten

--Benutzer
insert into Benutzer values('Gunni.gunner@yahoo.de','Gunni','Gunner','GunGun','1999-10-09');
insert into Benutzer values('Hansi.Hanser@yahoo.de','Hansi','Hanser','Hasi','1985-10-11');
insert into Benutzer values('Hermann.Manner@yahoo.de','Hermann','Manner','MamaMia73','1973-10-04');
insert into Benutzer values('Ella.Eller@yahoo.de','Ella','Eller','Ella4','1975-10-23');
insert into Benutzer values('Hoffi.Hoffmann@yahoo.de','Hoffi','Hoffmann','Superman','1985-10-12');

--Kurse
insert into Kurs values(0,'Gunni.gunner@yahoo.de','Spass mit Glas','Lorem Ipsum dolor und so weiter','Wissenschaft','verfuegbar');
insert into Kurs values(1,'Hansi.Hanser@yahoo.de','Spass mit Gras','Lorem Ipsum dolor und so weiter','Hobby','nicht verfuegbar');
insert into Kurs values(2,'Hansi.Hanser@yahoo.de','Astronomie fuer Anfaenger','Lorem Ipsum dolor und so weiter','Wissenschaft','verfuegbar');
insert into Kurs values(3,'Gunni.gunner@yahoo.de','Physik fuer Dummies','Lorem Ipsum dolor und so weiter','Wissenschaft','verfuegbar');
insert into Kurs values(4,'Ella.Eller@yahoo.de','Sozialwissenschaften fuer noch groessere Dummies','Lorem Ipsum dolor und so weiter','Wissenschaft','nicht verfuegbar');

--Lektion
insert into Lektion values(0,0,'2006-02-08 10:31:00',0);
insert into Lektion values(1,0,'2006-02-08 10:32:00',0);
insert into Lektion values(2,0,'2006-02-08 10:31:00',0);
insert into Lektion values(3,1,'2006-02-08 10:31:00',0);
insert into Lektion values(4,1,'2006-02-08 10:31:00',0);
insert into Lektion values(5,1,'2006-02-08 10:31:00',0);
insert into Lektion values(6,2,'2006-02-08 10:31:00',0);
insert into Lektion values(7,2,'2006-02-08 10:31:00',0);
insert into Lektion values(8,3,'2006-02-08 10:31:00',0);
insert into Lektion values(9,3,'2006-02-08 10:31:00',0);
insert into Lektion values(10,3,'2006-02-08 10:31:00',0);
insert into Lektion values(11,3,'2006-02-08 10:33:00',0);
insert into Lektion values(12,4,'2006-02-08 10:31:00',0);
insert into Lektion values(13,4,'2006-02-08 10:31:00',0);
insert into Lektion values(14,4,'2006-02-08 10:31:00',0);
insert into Lektion values(15,4,'2006-02-08 10:31:00',0);

--Inhalt 
insert into Inhalt values(0,0,'Gläserspaß','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(1,1,'Hobby Botaniker die Einführung','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(2,2,'Was ist ein Teleskop','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(3,3,'Biomechanik','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(4,4,'Was ist Sozialwissenschaft','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(5,5,'Gläserspaß die Zweite','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(6,6,'Hobby Botaniker die Zweite','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(7,7,'Wie verwende ich ein Teleskop','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(8,8,'Mehr Mechanik','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(9,9,'Karl Popper und Gesellschaftstheorie ','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(10,10,'Gläserspaß die Dritte','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(11,11,'Hobby Botaniker die dritte','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(12,12,'Merkur der Planet ohne Mond ','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(13,13,'Ende der Mechanik','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);
insert into Inhalt values(14,14,'Karl Popper und Wissenschaftstheorie','Lorem Ipsum dolor und so weiter','2006-02-08 10:31:00',0);

--Aufgabe 
insert into Aufgabe values(0,0,'Kann Glas beschlagen?','Ja',20,10,'2006-02-09 10:35:00');
insert into Aufgabe values(1,1,'MAcht Glas Spa?','Eigentlich nicht',20,10,'2006-02-10 10:35:00');
insert into Aufgabe values(2,2,'Ist Glas ein Gas?','Nein',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(3,3,'eine Grossartige Aufgabe und was fuer eine Aufgabe es ist!','42',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(4,4,'M?hen oder M?en','ja',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(5,5,'Ist gras gelb?','manchmal',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(6,6,'Wo ist der Mond?','Da ist er jaaa! Na was bist du f?r ein Mond! Ja fein Ja fein!',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(7,7,'Ist der Saturn Rund!','Schon',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(8,8,'Wurzel aus 8238921 durch zwoelf pi?','42',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(9,9,'vmax wenn a = 2,437 m/s r = 2193,123s?','42',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(10,10,'Ist Physik spa?ig?','Nein',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(11,11,'Werde ich mit diesem Wissen jemals Frauen beeindrucken k?nnen','Nein',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(12,12,'Ist Karl Marx toll?','Ja',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(13,13,'Ist Kapitalismus toll?','Nein',20,10,'2006-02-11 10:36:00');
insert into Aufgabe values(14,14,'Ist das hier Indoktrinierung?','Indoktriewas?',20,10,'2006-02-11 10:36:00');

--Ergebnis
insert into Ergebnis values('Hoffi.Hoffmann@yahoo.de',0,20);
insert into Ergebnis values('Hoffi.Hoffmann@yahoo.de',1,12);
insert into Ergebnis values('Hoffi.Hoffmann@yahoo.de',2,18);
insert into Ergebnis values('Hoffi.Hoffmann@yahoo.de',6,16);
insert into Ergebnis values('Ella.Eller@yahoo.de',0,18);
insert into Ergebnis values('Ella.Eller@yahoo.de',1,17);
insert into Ergebnis values('Gunni.gunner@yahoo.de',8,10);

--Bewertung
insert into Bewertung values('Hansi.Hanser@yahoo.de',0,3,'Hätte man schon ein bisschen mehr ins Detail gehen können');
insert into Bewertung values('Hansi.Hanser@yahoo.de',1,4,'Keine AHnung hatte nur die ganze Zeit die Notification');
insert into Bewertung values('Hansi.Hanser@yahoo.de',2,4,'Gut, Besser, Paulaner');
insert into Bewertung values('Hoffi.Hoffmann@yahoo.de',3,3,'Hello');
insert into Bewertung values('Hoffi.Hoffmann@yahoo.de',4,0,'Mag kein Physik!');

--Einschreibung
insert into Einschreibung values('Hoffi.Hoffmann@yahoo.de',0,'2007-02-09 10:35:00');
insert into Einschreibung values('Hoffi.Hoffmann@yahoo.de',1,'2006-02-09 10:35:00');
insert into Einschreibung values('Hoffi.Hoffmann@yahoo.de',2,'2009-02-09 10:35:00');
insert into Einschreibung values('Gunni.gunner@yahoo.de',0,'2010-02-09 10:35:00');
insert into Einschreibung values('Gunni.gunner@yahoo.de',1,'2011-02-09 10:35:00');
insert into Einschreibung values('Gunni.gunner@yahoo.de',2,'2012-02-09 10:35:00');
insert into Einschreibung values('Gunni.gunner@yahoo.de',3,'2013-02-09 10:35:00');
insert into Einschreibung values('Ella.Eller@yahoo.de',0,'2014-02-09 10:35:00');
insert into Einschreibung values('Ella.Eller@yahoo.de',1,'2015-02-09 10:35:00');
insert into Einschreibung values('Ella.Eller@yahoo.de',2,'2016-02-09 10:35:00');
insert into Einschreibung values('Ella.Eller@yahoo.de',3,'2017-02-09 10:35:00');
insert into Einschreibung values('Ella.Eller@yahoo.de',4,'2018-02-09 10:35:00');

--Thread
insert into Thread values(0,'Ella.Eller@yahoo.de',0,'HaliHallo','2001-02-09 10:35:00');
insert into Thread values(1,'Gunni.gunner@yahoo.de',0,'Ich sags mal ganz klar','2002-02-09 10:35:00');
insert into Thread values(2,'Ella.Eller@yahoo.de',0,'Brauche Hilfe','2001-02-09 10:35:00');
insert into Thread values(3,'Ella.Eller@yahoo.de',1,'Brauche keine Hilfe','2018-02-09 10:35:00');
insert into Thread values(4,'Ella.Eller@yahoo.de',1,'Bin einsam','2018-02-09 10:35:00');
insert into Thread values(5,'Ella.Eller@yahoo.de',1,'Bin zweisam','2001-02-09 10:35:00');
insert into Thread values(6,'Ella.Eller@yahoo.de',2,'Hast du Brot?','2002-02-09 10:35:00');
insert into Thread values(7,'Ella.Eller@yahoo.de',2,'Ich bekomm immer nur Fehlermeldungen','2003-02-09 10:35:00');
insert into Thread values(8,'Gunni.gunner@yahoo.de',2,'Ich mag eigentlich gar nicht mehr','2012-02-09 10:35:00');
insert into Thread values(9,'Gunni.gunner@yahoo.de',3,'Mein Hamster ist tot','2012-02-09 10:35:00');
insert into Thread values(10,'Gunni.gunner@yahoo.de',3,'Jemand war gemein zu mir','2017-02-09 10:35:00');
insert into Thread values(11,'Gunni.gunner@yahoo.de',3,'Sp?ter uni','2018-02-09 10:35:00');
insert into Thread values(12,'Hoffi.Hoffmann@yahoo.de',4,'Fr?her uni','2012-02-09 10:35:00');
insert into Thread values(13,'Hoffi.Hoffmann@yahoo.de',4,'Garnich Uni','2016-02-09 10:35:00');
insert into Thread values(14,'Hoffi.Hoffmann@yahoo.de',4,'Was ist uni?','2018-02-09 10:35:00');

--Nachricht
insert into Nachricht values('2018-02-09 10:35:01','Hoffi.Hoffmann@yahoo.de',0,'Hello');
insert into Nachricht values('2018-02-09 16:36:23','Hoffi.Hoffmann@yahoo.de',1,'Bla');
insert into Nachricht values('2018-02-09 18:37:16','Hoffi.Hoffmann@yahoo.de',2,'Ui ui ui');
insert into Nachricht values('2018-02-09 10:38:11','Hoffi.Hoffmann@yahoo.de',3,'da geht nix');
insert into Nachricht values('2018-02-09 16:39:28','Hoffi.Hoffmann@yahoo.de',4,'alles im Eimer');
insert into Nachricht values('2018-02-09 10:40:39','Hoffi.Hoffmann@yahoo.de',5,'Alles kaputt');
insert into Nachricht values('2018-02-09 12:35:50','Hoffi.Hoffmann@yahoo.de',6,'nix mehr zu retten');
insert into Nachricht values('2018-02-09 11:34:09','Hoffi.Hoffmann@yahoo.de',7,'geb lieber gleich auf');
insert into Nachricht values('2018-02-09 07:35:32','Ella.Eller@yahoo.de',8,'du kannst das sowie so ned gib mal her');
insert into Nachricht values('2018-02-09 10:35:45','Ella.Eller@yahoo.de',9,'ich weiss es besser');
insert into Nachricht values('2018-02-09 14:35:12','Ella.Eller@yahoo.de',10,'ich bin toll');
insert into Nachricht values('2018-02-09 05:37:10','Ella.Eller@yahoo.de',11,'aber du nicht');
insert into Nachricht values('2018-02-09 08:34:30','Ella.Eller@yahoo.de',12,'ble');
insert into Nachricht values('2018-02-09 19:32:50','Gunni.gunner@yahoo.de',13,'ble');
insert into Nachricht values('2018-02-09 20:31:30','Gunni.gunner@yahoo.de',14,'ble');
