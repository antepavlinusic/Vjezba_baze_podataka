# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\urar_silvija.sql

drop database if exists urar_silvija;
create database urar_silvija;
use urar_silvija;

create table segrt(
    sifra               int not null primary key auto_increment,
    urar                int not null,
    osoba               int not null,
    zadatak             varchar(50)
);

create table urar(
    sifra               int not null primary key auto_increment,      
    osoba               int not null,
    segrt               int not null
);

create table osoba(
    sifra               int not null primary key auto_increment,
    ime                 varchar(50) not null,
    prezime             varchar(50) not null,
    oib                 char(11),
    iban                varchar(50)
);

create table popravak(
    sifra               int not null primary key auto_increment,
    urar                int not null,
    statuspopravka      varchar(50) not null,
    narudzba            int not null,
    cijena              decimal(18,2),
    korisnik            varchar(50) not null,
    kodpopravka         varchar(50) not null
);

create table sat(
    sifra               int not null primary key auto_increment,
    narudzba            int not null,
    model               varchar(50) not null,
    materijal           varchar(50) not null
);

create table narudzba(
    sifra               int not null primary key auto_increment,
    popravak            int not null,
    sat                 int not null
);


alter table urar add foreign key (osoba) references osoba(sifra);

alter table segrt add foreign key (osoba) references osoba(sifra);

alter table segrt add foreign key (urar) references urar(sifra);

alter table popravak add foreign key (urar) references urar(sifra);

alter table popravak add foreign key (narudzba) references narudzba(sifra);

alter table sat      add foreign key (narudzba) references narudzba(sifra);



