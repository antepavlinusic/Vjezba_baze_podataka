# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\taksi_sluzba.sql

drop database if exists taksi_sluzba;
create database taksi_sluzba;
use taksi_sluzba;

create table vozac(
    sifra               int not null primary key auto_increment,
    ime                 varchar(50) not null,
    prezime             varchar(50) not null,
    oib                 char(11),
    iban                varchar(50),
    brojvozackedozvole  varchar(50),
    ugovor              varchar(50)
);

create table vozilo(
    sifra               int not null primary key auto_increment,
    proizvodjac         varchar(50),
    model               varchar(50),
    godinaproizvodnje   datetime,
    servis              varchar(50),
    vozac               int not null
);

create table voznja(
    sifra               int not null primary key auto_increment,
    posebnausluga       int not null,
    kilometraza         int not null,
    cijena              decimal(18,2),
    tarifa              decimal(18,2) not null
);

create table putnik(
    sifra               int not null primary key auto_increment,
    vozac               int not null,
    posebnausluga       int not null,
    ime                 varchar(50) not null,
    prezime             varchar(50) not null,
    brojtelefona        varchar(50) not null,
    ulica               varchar(50) not null,
    kucnibroj           varchar(50) not null
);

create table posebnausluga(
    sifra               int not null primary key auto_increment,
    voznja              int not null,
    putnik              int not null
);

alter table vozilo add foreign key (vozac) references vozac(sifra);

alter table putnik add foreign key (vozac) references vozac(sifra);

alter table putnik add foreign key (posebnausluga) references posebnausluga(sifra);

alter table voznja add foreign key (posebnausluga) references posebnausluga(sifra);


