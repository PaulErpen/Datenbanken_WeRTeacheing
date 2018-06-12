--weRTeaching
--SQL Script
--Paul Erpenstein, Thomas Fregin, Maximillian Waiblinger

--Formate aendern
alter session set nls_date_format = 'yyyy-mm-dd';
alter session set nls_timestamp_format = 'yyyy-mm-dd hh24:mi:ss';

--Tabellen erstellen
create table Benutzer(
    email varchar(50) not null primary key,
    vorname varchar(50),
    nachname varchar(50),
    anzeigename varchar(50),
    gbdatum date not null
);
create table Kurs(
    kursnummer integer not null primary key,
    kursanbieter varchar(50) not null references Benutzer,
    kursname VARCHAR(50) not null,
    beschreibung varchar(600),
    kategorie varchar(50),
    status varchar(50)
);
create table Lektion(
    nummer integer not null primary key,
    kursnummer integer not null references Kurs,
    letztaenderung timestamp,
    aktiverinhalt integer
);
create table Inhalt(
    nummer integer not null primary key,
    lektionsnummer integer not null references Lektion,
    beschreibung varchar(600),
    text varchar(1200),
    letztaenderung timestamp,
    aktiveaufgabe integer
);
create table Aufgabe(
    nummer integer not null primary key,
    inhaltsnummer integer not null references Inhalt,
    aufgabenstellung varchar(200),
    loesung varchar(200),
    maxPunkte integer,
    minPunkte integer,
    letztaenderung timestamp
);
create table Ergebnis(
    benutzer varchar(50) not null references Benutzer,
    aufgabennummer integer not null references Aufgabe,
    bewertung integer,
    primary key(benutzer, aufgabennummer)
);
create table Bewertung(
    benutzer varchar(50) not null  references Benutzer,
    kursnummer integer not null references Kurs,
    bewertung integer,
    kommentar varchar(600),
    primary key(benutzer, kursnummer)
);
create table Einschreibung(
    benutzer varchar(50) not null references Benutzer,
    kursnummer integer not null references Kurs,
    zeitpunkt timestamp,
    primary key(benutzer, kursnummer)
);
create table Thread(
    nummer integer not null primary key,
    benutzer varchar(50) not null references Benutzer,
    kursnummer integer not null references Kurs,
    titel varchar(50),
    zeitpunkt timestamp
);
create table Nachricht(
    zeitpunkt timestamp not null primary key,
    benutzer varchar(50) not null references Benutzer,
    threadnummer integer not null references Thread,
    inhalt varchar(500)
);