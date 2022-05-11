# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\urar_silvija.sql

drop database if exists urar_silvija;
create database urar_silvija;
use urar_silvija;

create table segrt(
    zadatak             varchar(50)
);

create table urar(
    segrt               varchar(50)
);

create table osoba(
    ime                 varchar(50),
    prezime             varchar(50),
    oib                 decimal(50),
    iban                decimal(50)
);

create table popravak(
    statuspopravka      varchar(50),
    cijena              decimal(50),
    korisnik            varchar(50),
    kodpopravka         decimal(50)
);

create table sat(
    model               varchar(50),
    materijal           varchar(50)
);

create table narudzba(
    popravak            varchar(50),
    sat                 varchar(50)
);
