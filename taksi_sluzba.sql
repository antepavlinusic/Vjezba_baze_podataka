# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\taksi_sluzba.sql

drop database if exists taksi_sluzba;
create database taksi_sluzba;
use taksi_sluzba;

create table vozac(
    ime                 varchar(50),
    prezime             varchar(50),
    oib                 decimal(50),
    iban                decimal(50),
    brojvozackedozvole  decimal(50),
    ugovor              varchar(50)
);

create table vozilo(
    proizvodjac         varchar(50),
    model               varchar(50),
    godinaproizvodnje   decimal(50),
    servis              varchar(50),
    vozac               varchar(50)
);

create table voznja(
    kilometraza         decimal(50),
    cijena              decimal(50),
    tarifa              decimal(50)
);

create table putnik(
    ime                 varchar(50),
    prezime             varchar(50),
    brojtelefona        decimal(50),
    ulica               varchar(50),
    kucnibroj           decimal(50)
);

create table posebnausluga(
    voznja              varchar(50),
    putnik              varchar(50)
);