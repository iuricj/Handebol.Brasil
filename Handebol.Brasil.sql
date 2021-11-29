create database handebol;
use handebol;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(100),
senha varchar (45),
fkIdolo int,
foreign key (fkIdolo) references idolo(idIdolo));

select * from usuario;

create table idolo(
idIdolo int primary key auto_increment,
nomeIdolo varchar(45));

insert into idolo values
(null, 'Helinho'),
(null, 'Duda Amorin'),
(null, 'Thiagus');

select count(fkIdolo) from usuario where fkIdolo = 3
union 
select count(fkIdolo) from usuario where fkIdolo = 2
union 
select count(fkIdolo) from usuario where fkIdolo = 1;
