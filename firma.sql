# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\firma.sql

drop database if exists firma;
create database firma default character set utf8mb4;
use firma;

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2)
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    datumrodjenja datetime,
    placa decimal(18,2)
);

create table sudjeluje(
    projekt int not null,
    programer int not null,
    datumpocetka datetime,
    datumkraja datetime
);


alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);


insert into projekt (sifra, naziv, cijena)
values (null, 'Cyborg', 30000);
insert into projekt (sifra, naziv, cijena)
values (null,'Prototype',20000);
insert into projekt (sifra, naziv, cijena)
values (null, 'Pošumljavanje', 95000);


insert into programer (sifra, ime, prezime, datumrodjenja,placa)
values (null, 'Ante', 'Pavlinušić', '1987-02-10', 6500);
insert into programer (sifra, ime, prezime, datumrodjenja,placa)
values (null, 'Ivan', 'Farago', '1986-09-28', 14000);
insert into programer (sifra, ime, prezime, datumrodjenja, placa)
values (null, 'Mateja', 'Pavlinušić', '1990-07-31', 10000);

insert into sudjeluje (projekt,programer,datumpocetka,datumkraja)
values ('1', '1', '2022-12-23', '2023-02-06');
insert into sudjeluje (projekt,programer,datumpocetka,datumkraja)
values ('2','2', '2022-07-16', '2022-12-22');
insert into sudjeluje (projekt,programer,datumpocetka,datumkraja)
values ('3','3', '2023-07-31', '2023-12-20');

