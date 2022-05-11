# Linija koja pocne s hash je komentar 
# Ovo je SQL skripta   
# naredba za izvodjenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\samostan.sql

drop database if exists samostan;
create database samostan;
use samostan;

create table svecenik(
    posao       varchar(50)
);

create table nadredjenisvecenik(
    svecenik    varchar(50)
);

create table osoba(
    ime         varchar(50),
    prezime     varchar(50),
    oib         decimal(50),
    iban        decimal(50),
    titula      varchar(50)
);

create table posao(
    svetamisa   varchar(50),
    ispovjed    varchar(50),
    krstenje    varchar(50),
    zenidba     varchar(50)
);
