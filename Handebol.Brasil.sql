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

select * from usuario;

select count(fkIdolo) as votos, i.nomeIdolo from usuario as u join idolo as i where u.fkIdolo = i.idIdolo group by u.fkIdolo;
