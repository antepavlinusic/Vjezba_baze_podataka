# Linija koja pocne s hash je komentar
# Ovo je SQL skripta
# naredba za izvodjenje 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ante031\Documents\EdunovaPP25\Baze-podataka\Vjezba_baze_podataka\edukacija.sql

drop database if exists edukacija;
create database edukacija default character set utf8mb4;
use edukacija;

create table smjer(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2),
    trajanje int,
    upisnina decimal(18,2),
    certificiran boolean
);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    datumpocetka datetime,
    maksimalnopolaznika int,
    smjer int not null,
    predavac int
);

create table clan(
    sifra int not null primary key auto_increment,
    polaznik int not null,
    grupa int not null
);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    brojugovora varchar(50)
);

create table predavac(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(100),
    oib char(11)
);

alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table clan add foreign key (polaznik) references polaznik(sifra);
alter table clan add foreign key (grupa) references grupa(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);
alter table polaznik add foreign key (osoba) references osoba (sifra);


insert into 
smjer(sifra,naziv,cijena,trajanje,
upisnina,certificiran)
values (null,'Računovodstvo',4000,120,
300,true);

insert into smjer(sifra,naziv,cijena,trajanje,
upisnina,certificiran)
values (null, 'Tehničar za mrežu', 4500, 160, 300, true);

insert into smjer(sifra,naziv,cijena,trajanje,
upisnina,certificiran)
values (null, 'PHP programiranje', 5999, 180, 550, false);

insert into smjer(sifra,naziv,cijena,trajanje,
upisnina,certificiran)
values (null, 'Java programiranje', 6000, 160, 550, true);

insert into osoba (sifra,ime,prezime,email,oib)
values (null,'Tomislav','Jakopec','tjakopec@gmail.com',null);

insert into osoba (sifra,ime,prezime,email,oib)
values (null,'Shaquille','O''Neal','saki@gmail.com',null);

insert into osoba (sifra,ime,prezime,email,oib)
values 
(null,'Pavlinušić','Jona','jonakim.buldozer@gmail.com',null),
(null,'Pavlinušić','Šimun','s.pavlinusic@gmail.com',null),
(null,'Pavlinušić','Ivan','ivan.pavlinusic@gmail.com',null),
(null,'Pavlinušić','Branka','b.pavlinusic@gmail.com',null),
(null,'Pavlinušić','Maja','maja.pavlinusic@gmail.com',null),
(null,'Matić','Zoran','zoran.matic@gmail.com',null),
(null,'Matić','Julijana','j.matic@gmail.com',null),
(null,'Matić','Zlatko','zlatkos@gmail.com',null),
(null,'Mikić Vučak','Ana''Marija','amare.mvucak@gmail.com',null),
(null,'Mikić Vučak','Mario','m.mvucak@gmail.com',null),
(null,'Mikić Vučak','Marino','marino.mvucak@gmail.com',null),
(null,'Mikić Vučak','Rita','rita.mvucak@gmail.com',null); 
# jedna insert naredba može unositi više redaka u tablicu
# 3 - 17
insert into osoba (sifra,ime,prezime,email,oib)
values
(null,'Todorović','Filip','filip.tod95@gmail.com',null),
(null,'Majer','Antonio','majer.antonio@gmail.com',null),
(null,'Filipović','Srđan','srdjanfilipovic991@gmail.com',null),
(null,'Krnjaković','Filip','f.krnja@gmail.com',null),
(null,'Jukić','Željko','zeljac00@icloud',null),
(null,'Pavlinušić','Ante','ante.pavlinusic@gmail.com',null),
(null,'Bikić','Ante','bikic.tm@gmail.com',null),
(null,'Rukavina','Antun','antunrukavina@hotmail',null),
(null,'Poljak','Dino','dinopoljak99@gmail.com',null),
(null,'Rous','Leonard','leonardrous123@gmail.com',null),
(null,'Šakić','Marija','sakicmarija35@gmail.com',null),
(null,'Bukovec','Boris','botaosijek@gmail.com',null),
(null,'Kovač','Filip','chilim.dj@gmail.com',null),
(null,'Vuletić','Antonio','avuletic2212@gmail.com',null),
(null,'Andrija','Kruhoberec','akruhoberec1@outlook.com',null);

insert into predavac(sifra,osoba,iban)
values (null,1,null),(null,2,null);

insert into grupa 
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values (null,'TZM22', '2022-08-22',20,2,1);


insert into grupa 
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values 
(null,'PP25','2022-04-23',20,1,null);

insert into grupa
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values
(null,'JP26','2022-04-23',20,2,null);



# 1 - 15
insert into polaznik (sifra,osoba,brojugovora)
values
(null,3,null),
(null,4,null),
(null,5,null),
(null,6,null),
(null,7,null),
(null,8,null),
(null,9,null),
(null,10,null),
(null,11,null),
(null,12,null),
(null,13,null),
(null,14,null),
(null,15,null),
(null,16,null),
(null,17,null),
(null,18,null),
(null,19,null),
(null,20,null),
(null,21,null),
(null,22,null),
(null,23,null),
(null,24,null),
(null,25,null),
(null,26,null),
(null,27,null),
(null,28,null),
(null,29,null);

insert into clan (grupa,polaznik)
values (1,1),(1,2),(1,3),(1,4),(1,5),
(1,6),(1,7),(1,8),(1,9),(1,10),
(1,11),(1,12),(1,13),(1,14),(1,15);