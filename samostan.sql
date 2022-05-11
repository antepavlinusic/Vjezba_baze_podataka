# Linija koja pocne s hash je komentar 
# Ovo je SQL skripta   
# naredba za izvodjenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\samostan.sql

drop database if exists samostan;
create database samostan;
use samostan;

create table svecenik(
    sifra       int not null primary key auto_increment,
    osoba       int not null,
);

create table nadredjenisvecenik(
    sifra       int not null primary key auto_increment
    osoba       int not null,
    svecenik    varchar(50) not null
);

create table osoba(
    sifra       int not null primary key auto_increment,
    ime         varchar(50) not null,
    prezime     varchar(50)not null,
    oib         char(11) not null,
    iban        varchar(50),
    titula      varchar(50)
);

create table posao(
    sifra       int not null primary key auto_increment,
    svetamisa   varchar(50),
    ispovjed    varchar(50),
    krstenje    varchar(50),
    zenidba     varchar(50)
);
