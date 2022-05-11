# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba\postolar.sql

drop database if exists postolar;
create database postolar;
use postolar;

create table segrt(
    zadatak        varchar(50)
);

create table postolar(
    segrt          varchar(50)
);

create table osoba(
    ime            varchar(50),
    prezime        varchar(50),
    oib            decimal(50),
    iban           decimal(50)
);

create table popravak(
    statuspopravka varchar(50),
    cijena         decimal(50),
    korisnik       varchar(50),
    kodpopravka    decimal(50)
);

create table obuca(
    model          varchar(50),
    velicina       decimal(50),
    materijal      varchar(50)
);

create table narudzba(
    popravak       varchar(50),
    obuca          varchar(50)
);