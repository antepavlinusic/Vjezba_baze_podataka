# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\frizerski.sql

drop database if exists frizerski;
create database frizerski;
use frizerski;

create table djelatnik(
    sifra               int not null primary key auto_increment,    
    osoba               int not null,
    oib                 char(11),
    iban                decimal(50),
    ugovor              varchar(50)
);

create table usluga(
    sifra               int not null primary key auto_increment,
    cijena              decimal(18,2),
    bojanje             varchar(50),
    sisanje             varchar(50),
    brijanje            varchar(50),
    pranje              varchar(50)  
);

create table osoba(
    sifra               int not null primary key auto_increment,
    ime                 varchar(50) not null,
    prezime             varchar(50) not null,
    kontakt             varchar(50)
);

create table korisnik(
    sifra               int not null primary key auto_increment,
    osoba               int not null,
    vrijemenarucivanja  datetime,
    usluga              int not null
);
