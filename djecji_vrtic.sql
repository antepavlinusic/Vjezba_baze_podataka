# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\djecji_vrtic.sql

drop database if exists djecji_vrtic; 
create database djecji_vrtic;
use djecji_vrtic;

create table strucnasprema(
    razina                  varchar(50),
    obrazovnaustanova       varchar(50),
    datumzavrsetka          varchar(50),
    kod                     varchar(50)
);

create table odgajateljica(
    iban                    varchar(50),
    kontakt                 varchar(50),
    strucnasprema           varchar(50)
);

create table osoba(
    ime                     varchar(50),
    prezime                 varchar(50),
    oib                     varchar(50)
);

create table djeca(
    imeroditelja            varchar(50),
    prezimeroditelja        varchar(50),
    kontaktroditelja        varchar(50)
);

create table odgojnaskupina(
    naziv                   varchar(50),
    makasimalnibrojdjece    varchar(50),
    odgajateljica           varchar(50),
    djeca varchar(50)
);