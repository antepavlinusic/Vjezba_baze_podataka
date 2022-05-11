# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    naziv           varchar(50),
    datumpocetka    decimal(50),
    vrijemepocetka  decimal(50),
    datumzavrsetka  decimal(50),
    vrijednost      decimal(50),
    organizator     varchar(50)
);

create table djela(
    naziv           varchar(50),
    metoda          varchar(50),
    autor           varchar(50)
);

create table sponzor(
    naziv           varchar(50),
    fond            decimal(50)
);

create table kustos(
    ime             varchar(50),
    prezime         varchar(50),
    oib             decimal(50),
    iban            decimal(50),
    izlozba         varchar(50)
);