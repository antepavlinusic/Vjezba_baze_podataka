# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\djecji_vrtic.sql

drop database if exists djecji_vrtic; 
create database djecji_vrtic;
use djecji_vrtic;

create table strucnasprema(
    sifra                   int not null not null primary key auto_increment,
    razina                  varchar(50) not null,
    obrazovnaustanova       varchar(50) not null,
    odgajateljica           int not null,
    datumzavrsetka          datetime
);

create table odgajateljica(
    sifra                   int not null not null primary key auto_increment,
    iban                    varchar(50),
    kontakt                 varchar(50),
    osoba                   int not null,
    strucnasprema           char(11)
);

create table osoba(
    sifra                   int not null primary key auto_increment,
    ime                     varchar(15) not null,
    prezime                 varchar(20) not null,
    oib                     char(11)
);

create table dijete(
    sifra                   int not null not null primary key auto_increment,
    osoba                   int not null,
    imeroditelja            varchar(50),
    prezimeroditelja        varchar(50),
    odgojnaskupina          int not null,
    kontaktroditelja        varchar(50)
);

create table odgojnaskupina(
    sifra                   int not null primary key auto_increment,
    naziv                   varchar(50) not null,
    makasimalnibrojdjece    int,
    odgajateljica           int not null,
    dijete                  int not null
);

alter table odgojnaskupina add foreign key (odgajateljica)  references odgajateljica(sifra);

alter table dijete         add foreign key (odgojnaskupina) references odgojnaskupina(sifra);

alter table strucnasprema  add foreign key (odgajateljica)  references odgajateljica(sifra);

alter table odgajateljica  add foreign key (osoba)          references osoba(sifra);

alter table dijete         add foreign key (osoba)          references osoba(sifra);


