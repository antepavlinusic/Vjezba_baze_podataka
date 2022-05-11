# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba\doktorska_ordinacija.sql

drop database if exists doktorska_ordinacija;
create database doktorska_ordinacija;
use doktorska_ordinacija;

create table doktor(
    ime                 varchar(50),
    prezime             varchar(50),
    titula              varchar(50),
    odjel               varchar(50),
    specijalizacija     varchar(50)
);

create table medicinska_sestra(
    ime                 varchar(50),
    prezime             varchar(50),
    odjel               varchar(50)
);

create table pacijent(
    ime                 varchar(50),
    prezime             varchar(50),
    medicinskikarton    varchar(50)
);

create table odjel(
    medicinska_sestra   varchar(50),
    doktor              varchar(50)
);
