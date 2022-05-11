# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\frizerski.sql

drop database if exists frizerski;
create database frizerski;
use frizerski;

create table djelatnik(
    oib                 decimal(50),
    iban                decimal(50),
    ugovor              char(11)
);

create table usluga(
    bojanje             varchar(50),
    sisanje             varchar(50),
    brijanje            varchar(50),
    pranje              char(11)   
);

create table osoba(
    ime                 varchar(50),
    prezime             varchar(50),
    kontakt             char(11)
);

create table korisnik(
    vrijemenarucivanja  varchar(50),
    usluga              char(11)
);
