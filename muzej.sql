# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    sifra           int not null primary key auto_increment,
    naziv           varchar(50) not null,
    datumpocetka    datetime,
    vrijemepocetka  datetime,
    datumzavrsetka  datetime,
    vrijednost      decimal(18,2) not null,
    organizator     varchar(50) not null
);

create table djela(
    sifra           int not null primary key auto_increment,
    naziv           varchar(50) not null,
    metoda          varchar(50),
    autor           varchar(50)
);

create table sponzor(
    sifra           int not null primary key auto_increment,
    naziv           varchar(50),
    fond            decimal(18,2)
);

create table kustos(
    sifra           int not null primary key auto_increment,
    ime             varchar(50) not null,
    prezime         varchar(50) not null,
    oib             char (11),
    iban            varchar(50),
    izlozba         int not null
);