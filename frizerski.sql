# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\frizerski.sql

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
    djelatnik           int not null,
    usluga              int not null
);


alter table djelatnik   add foreign key (osoba)     references osoba(sifra);

alter table korisnik    add foreign key (djelatnik) references djelatnik(sifra);

alter table korisnik    add foreign key (usluga)    references usluga(sifra);

alter table korisnik    add foreign key (osoba)     references osoba(sifra);
