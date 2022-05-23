# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\doktorska_ordinacija.sql

drop database if exists doktorska_ordinacija;
create database doktorska_ordinacija;
use doktorska_ordinacija;

create table doktor(
    sifra               int not null primary key auto_increment,
    ime                 varchar(50) not null,
    prezime             varchar(50) not null,
    titula              varchar(50),
    odjel               varchar(50),
    specijalizacija     varchar(50)
);

create table medicinska_sestra(
    sifra               int not null primary key auto_increment,
    ime                 varchar(50) not null,
    prezime             varchar(50) not null,
    odjel               int not null
);

create table pacijent(
    sifra               int not null primary key auto_increment,
    ime                 varchar(50) not null,
    prezime             varchar(50) not null,
    odjel               int not null,
    medicinskikarton    varchar(50) not null
);

create table odjel(
    sifra               int not null primary key auto_increment,
    medicinska_sestra   int not null,
    doktor              int not null
);


alter table pacijent            add foreign key (odjel)  references odjel(sifra);

alter table odjel               add foreign key (doktor) references doktor(sifra);

alter table medicinska_sestra   add foreign key (odjel)  references odjel(sifra);

