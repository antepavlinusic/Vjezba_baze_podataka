# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\salon_za_uljepsavanje.sql

drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;
use salon_za_uljepsavanje;

create table djelatnica(
    sifra                  int not null primary key auto_increment,
    osoba                  int not null,
    oib                    char(11),
    iban                   varchar(50),
    ugovor                 varchar(50)
);

create table osoba(
    sifra                  int not null primary key auto_increment,
    ime                    varchar(50) not null,
    prezime                varchar(50) not null,
    kontakt                varchar(50)
);

create table materijal(
    sifra                  int not null primary key auto_increment,
    ruz                    varchar(50) not null,
    raspica                varchar(50) not null,
    skarice                varchar(50) not null,
    uvlampa                varchar(50) not null
);

create table usluga(
    sifra                  int not null primary key auto_increment,
    sminkanje              varchar(50),
    pedikura               varchar(50),
    manikura               varchar(50),
    materijal              varchar(50) not null
);

create table korisnik(
    sifra                  int not null primary key auto_increment,
    osoba                  int not null,
    vrijemenarucivanja     datetime,
    usluga                 varchar (50) not null
);