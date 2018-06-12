--weRTeaching
--SQL Script
--Paul Erpenstein, Thomas Fregin, Maximillian Waiblinger

--Formate aendern
alter session set nls_date_format = 'yyyy-mm-dd';
alter session set nls_timestamp_format = 'yyyy-mm-dd hh24:mi:ss';

--Abfragen (Verarbeitungsanforderungen)
--"1. Welche Kurse haben Benutzer belegt?"
select Benutzer, Kursnummer
from Einschreibung;

--"2. Welche durchschnittliche Bewertung haben die Kurse eines Kursanbieters?" 
select k.kursanbieter as "Kursanbieter", avg(b.bewertung) as "Durchschnitt" 
from Kurs k 
join Bewertung b on k.kursnummer = b.kursnummer
group by k.kursanbieter;

--"3. Welche Bewertung hat ein Benutzer in einem Kurs erreicht?"
select k.kursnummer, e.benutzer , sum(e.bewertung) as "Bewertung"
from Ergebnis e 
join aufgabe a on a.nummer = e.aufgabennummer
join inhalt i on i.nummer = a.inhaltsnummer
join lektion l on l.nummer = i.lektionsnummer
join kurs k on k.kursnummer = l.kursnummer
group by k.kursnummer, e.benutzer;

--"4. Was ist die durchschnittliche Bewertung in einem Kurs?" 
select k.kursnummer, avg(e.bewertung) 
from ergebnis e
join aufgabe a on a.nummer = e.aufgabennummer
join inhalt i on i.nummer = a.inhaltsnummer
join lektion l on l.nummer = i.lektionsnummer
join kurs k on k.kursnummer = l.kursnummer
group by k.kursnummer;

--"5. Was ist die durchschnittliche Bewertung aller Kurse?"
select avg(e.bewertung)
from ergebnis e
join aufgabe a on a.nummer = e.aufgabennummer
join inhalt i on i.nummer = a.inhaltsnummer
join lektion l on l.nummer = i.lektionsnummer
join kurs k on k.kursnummer = l.kursnummer;

--"6. In welchem Kurs gibt es überdurchschnittlich viele Benutzer?"
select k.kursnummer, count(*) as "Teilnehmerzahl"
from kurs k
join einschreibung e on k.kursnummer = e.kursnummer
group by k.kursnummer
having count(*)>(select avg(count(*))
    from kurs k
    join einschreibung e on k.kursnummer = e.kursnummer
    group by k.kursnummer);
    
--"7.Bei welchen Kursen hat ein Benutzer bereits alle Aufgaben bestanden bzw. welche Kurse hat ein Benutzer abgeschlossen?"
select k1.kursnummer
from kurs k1
join lektion l1 on k1.kursnummer = l1.kursnummer
join inhalt i1 on l1.nummer = i1.lektionsnummer
join aufgabe a1 on i1.nummer = a1.inhaltsnummer
join ergebnis e1 on a1.nummer = e1.aufgabennummer
group by k1.kursnummer, e1.benutzer
having count(*)=(select count(*)
    from kurs k2
    join lektion l2 on k2.kursnummer = l2.kursnummer
    join inhalt i2 on l2.nummer = i2.lektionsnummer
    join aufgabe a2 on i2.nummer = a2.inhaltsnummer
    group by k2.kursnummer
    having k1.kursnummer = k2.kursnummer);

--"8. Wie lange dauert es im Schnitt für einen Nutzer einen Kurs zu bestehen?" 


--"9. Wie viele Kursteilnehmer hatte ein Kurs über einen gewissen Zeitraum?"
select k.kursnummer, count(*) as Kursteilnehmer
from kurs k
join einschreibung e on e.kursnummer  = k.kursnummer
join benutzer b on e.benutzer = b.email
where e.zeitpunkt between to_timestamp('2002-02-09 10:35:00', 'yyyy-mm-dd hh24:mi:ss') and   to_timestamp( '2016-02-09 10:35:00', 'yyyy-mm-dd hh24:mi:ss')
group by k.kursnummer;

--"10. Wie viele Einschreibungen hatte ein Kurs in einem gewissen Zeitraum?"
select k.kursnummer, count(*) as Einschreibungen
from kurs k
join einschreibung e on e.kursnummer  = k.kursnummer
where e.zeitpunkt between to_timestamp('2002-02-09 10:35:00', 'yyyy-mm-dd hh24:mi:ss') and   to_timestamp( '2016-02-09 10:35:00', 'yyyy-mm-dd hh24:mi:ss')
group by k.kursnummer;

--"11. Welche drei Kurse wurden von Benutzern am häufigsten belegt, welche auch Kurs X belegt hatten?" 

--"12. Was ist das prozentuale Mittel aller bestandenen Aufgaben aller Nutzer im Vergleich zur Menge aller Aufgaben in dem jeweiligen Kurs?"

--"13. Wie lange her ist die letzte Aktualisierung eines aktiven Inhalts?" 
select max(letztaenderung) 
from lektion;

--"14.Wie alt sind die aktiven Inhalte eines Kurses/aller Kurse eines Kursanbieters/aller Lektionen im Schnitt?"
