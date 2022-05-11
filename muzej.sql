# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    sifra           int not null primary key auto_increment,
    naziv           varchar(50) not null,
    datumpocetka    datetime not null,
    vrijemepocetka  datetime not null,
    datumzavrsetka  datetime,
    vrijednost      decimal(18,2) not null,
    sponzor         int not null
);

create table djela(
    sifra           int not null primary key auto_increment,
    naziv           varchar(50) not null,
    metoda          varchar(50),
    izlozba         int not null,
    autor           varchar(50)
);

create table sponzor(
    sifra           int not null primary key auto_increment,
    naziv           varchar(50),
    fond            decimal(18,2)
);

create table kustos(
    sifra           int not null primary key auto_increment,
    ime             varchar(50) not null,
    prezime         varchar(50) not null,
    oib             char (11),
    iban            varchar(50),
    izlozba         int not null
);

alter table djela add foreign key (izlozba) references izlozba(sifra);

alter table kustos add foreign key (izlozba) references izlozba(sifra);

alter table izlozba add foreign key (sponzor) references sponzor(sifra);

