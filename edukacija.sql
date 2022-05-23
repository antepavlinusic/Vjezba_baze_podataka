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
    cijena decimal(18,2), # kada ne piše not null podrazumjeva se null
    trajanje int,
    upisnina decimal(18,2),
    certificiran boolean
);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    datumpocetka datetime,
    maksimalnopolaznika int,
    smjer int not null, 
    predavac int 
);

create table clan(
    sifra int not null primary key auto_increment,
    grupa int not null, 
    polaznik int not null 
);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null, 
    brojugovora varchar(10)
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

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);
alter table predavac add foreign key (osoba) references osoba(sifra);




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
values 
(null, 'Ante', 'Pavlinušić','ante.pavlinusic@gmail.com',null),
(null,'Tomislav','Jakopec','tjakopec@gmail.com',null),
(null,'Shaquille','O''Neal','saki@gmail.com',null),
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
(null,'Mikić Vučak','Rita','rita.mvucak@gmail.com',null), 
(null,'Krstić','Matija','kmatija@gmail.com',null);

#15-29
insert into predavac(sifra,osoba,iban)
values (null,1,null),(null,2,null),(null,3,null);

insert into grupa 
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values (null,'TZM22', '2022-08-22',20,2,null);


insert into grupa 
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values 
(null,'PP25','2022-04-23',30,3,null);

insert into grupa
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values
(null,'JP26','2022-04-23',20,4,null);

insert into grupa
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values (null, 'RAČ22', '2022-04-23',30,1,null);





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
(null,15,null);




insert into clan (sifra,polaznik,grupa)
values (null,1,1),(null,2,1),(null,3,1),(null,4,1),(null,5,1),
(null,6,1),(null,7,1),(null,8,1),(null,9,1),(null,10,1),
(null,11,1),(null,12,1),(null,13,2);



#select * from  osoba;

#update osoba set oib='82068742855' where sifra=1;

#select * from predavac;
#delete predavac where sifra=1;

#delete from osoba where sifra=1;

#delete from predavac where sifra=1;

#insert into osoba
#values ('1','Ante','Pavlinušić','ante.pavlinusic@gmail.com',null); 

