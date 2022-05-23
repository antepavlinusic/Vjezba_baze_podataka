# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\salon_za_uljepsavanje.sql

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
    usluga                 int not null,
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
    korisnik               int not null, 
    materijal              varchar(50) not null
);

create table korisnik(
    sifra                  int not null primary key auto_increment,
    osoba                  int not null,
    djelatnica             int not null,
    vrijemenarucivanja     datetime
);

alter table djelatnica  add foreign key (osoba)     references osoba(sifra);

alter table korisnik    add foreign key (osoba)     references osoba(sifra);

alter table usluga      add foreign key (korisnik)  references korisnik(sifra);

alter table korisnik    add foreign key(djelatnica) references djelatnica(sifra);

alter table materijal   add foreign key (usluga)    references usluga(sifra);


