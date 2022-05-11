# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\udruga_za_zastitu_zivotinja.sql

drop database if exists udruga_za_zastitu_zivotinja;
create database udruga_za_zastitu_zivotinja;
use udruga_za_zastitu_zivotinja;

create table osoba(
    ime                         varchar(50),
    prezime                     varchar(50),
    oib                         decimal(50),
    email                       char(11)
);

create table zivotinja(
    vrsta                       varchar(50),
    starost                     varchar(50),
    tezina                      varchar(50),
    bolest                      varchar(50),
    cipiranje                   char(11)
);

create table sticenikudruge(
    makasimalnibrojsticenika    varchar(50),
    hrana                       varchar(50),
    zivotinja                   varchar(50),
    kod                         char(11) 
);

create table prostor(
    materijal                   varchar(50),
    visina                      varchar(50),
    duzina                      varchar(50),
    sirina                      varchar(50)
);