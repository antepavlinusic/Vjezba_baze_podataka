# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\postolar.sql

drop database if exists postolar;
create database postolar;
use postolar;

create table segrt(
    sifra          int not null primary key auto_increment,
    osoba          int not null,
    zadatak        varchar(50)
);

create table postolar(
    sifra          int not null primary key auto_increment,
    osoba          int not null,
    popravak       int not null,
    segrt          int not null
);

create table osoba(
    sifra          int not null primary key auto_increment,
    ime            varchar(50) not null,
    prezime        varchar(50),
    oib            char(11),
    iban           varchar(50)
);

create table popravak(
    sifra          int not null primary key auto_increment,
    statuspopravka varchar(50) not null,
    postolar       int not null,
    cijena         decimal(18,2),
    korisnik       varchar(50) not null,
    kodpopravka    int
);

create table obuca(
    sifra          int not null primary key auto_increment,
    model          varchar(50) not null,
    velicina       decimal(18,2) not null,
    materijal      varchar(50)
);

create table narudzba(
    sifra          int not null primary key auto_increment,
    popravak       int not null,
    obuca          int not null
);


alter table popravak add foreign key (postolar) references postolar(sifra);
alter table postolar add foreign key (osoba)    references osoba(sifra);

alter table segrt    add foreign key (osoba)    references osoba(sifra);
alter table narudzba add foreign key(popravak)  references popravak(sifra);

alter table narudzba add foreign key(obuca)     references obuca(sifra);
alter table postolar add foreign key(segrt)     references segrt(sifra);


