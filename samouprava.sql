# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\samouprava.sql

drop database if exists samouprava;
create database samouprava default character set utf8mb4;
use samouprava;

create table zupanija(
    opcina int,
    sifra int not null primary key auto_increment,
    naziv varchar(200),
    zupan int
);

create table zupan(
    sifra int not null primary key auto_increment,
    zupanija int,
    ime varchar(50),
    prezime varchar(50)
);


create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    mjesto int,
    naziv varchar(50) not null
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int,
    naziv varchar(50)
);


alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table zupanija add foreign key(zupan) references zupan(sifra);
alter table mjesto add foreign key(opcina) references opcina(sifra);


insert into zupanija (naziv)
values ('Osječko-baranjska');

insert into zupanija (naziv)
values ('Vukovarsko-srijemska');

insert into zupanija (naziv)
values ('Dubrovačko-neretvanska');

insert into opcina (naziv,zupanija)
values ('Čepin', '1');
insert into opcina (naziv, zupanija)
values ('Antunovac', '1');
insert into opcina (naziv, zupanija)
values ('Darda', '1');
insert into opcina(naziv, zupanija)
values ('Bilje', '1');
insert into opcina(naziv, zupanija)
values ('Bizovac', '1');
insert into opcina (naziv, zupanija)
values ('Čeminac', '1');




insert into zupan (zupanija, ime, prezime)
values ('1', 'Ivan', 'Anušić');
insert into zupan(zupanija, ime, prezime)
values ('2', 'Damir', 'Dekanić');
insert into zupan (zupanija, ime, prezime)
values ('3', 'Nikola', 'Dobroslavić');



