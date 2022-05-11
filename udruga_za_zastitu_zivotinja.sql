# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\udruga_za_zastitu_zivotinja.sql

drop database if exists udruga_za_zastitu_zivotinja;
create database udruga_za_zastitu_zivotinja;
use udruga_za_zastitu_zivotinja;

create table clanudruge(
    sifra                       int not null primary key auto_increment,   
    ime                         varchar(50) not null,
    prezime                     varchar(50) not null,
    oib                         char(11),
    email                       varchar(50)
);

create table zivotinja(
    sifra                       int not null primary key auto_increment,
    vrsta                       varchar(50) not null,
    starost                     varchar(50) not null,
    tezina                      varchar(50) not null,
    bolest                      varchar(50) not null,
    cipiran                     boolean not null
);

create table sticenikudruge(
    sifra                       int not null primary key auto_increment,
    makasimalnibrojsticenika    int,
    hrana                       varchar(50),
    zivotinja                   int not null,
    kod                         varchar(50) 
);

create table prostor(
    sifra                       int not null primary key auto_increment,
    materijal                   varchar(50),
    visina                      decimal(18,2) not null,
    duzina                      decimal(18,2) not null,
    sirina                      decimal(18,2) not null
);