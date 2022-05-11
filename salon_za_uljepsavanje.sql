# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\salon_za_uljepsavanje.sql

drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;
use salon_za_uljepsavanje;

create table djelatnica(
    oib                    decimal(50),
    iban                   decimal(50),
    ugovor                 char(11)
);

create table osoba(
    ime                    varchar(50),
    prezime                varchar(50),
    kontakt                char(11)
);

create table materijal(
    ruz                    varchar(50),
    raspica                varchar(50),
    skarice                varchar(50),
    lampe                  char(11)
);

create table usluga(
    sminkanje              varchar(50),
    pedikura               varchar(50),
    manikura               varchar(50),
    materijal              char(11)
);

create table korisnik(
    vrijemenarucivanja     varchar(50),
    usluga                 char(11)
);