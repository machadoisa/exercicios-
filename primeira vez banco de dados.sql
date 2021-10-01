CREATE DATABASE exercicio;
USE exercicio;
CREATE TABLE uzuarios(
nome VARCHAR (20), 
sobrenome VARCHAR (40), 
idade INT 
);
rename table uzuarios to usuarios;
alter table usuarios add email varchar(40);
select * from usuarios;
alter table usuarios drop column sobrenome;
insert into usuarios values ('vanessaa', '16', 'vanessa.rosa@gmail.com');
insert into usuarios values
('Adailton', 22, 'adailton.mas@yahoo.com'),
('Andressa', 36, 'andressa.simas@uol.com.br'),
('Mayra', 24, 'mayra_antunes@gmail.com'),
('Cristiane', 14, 'cris.maya@gmail.com'),
('Carina', 27, 'carina.almeida@gmail.com'),
('Clóvis', 29, 'clovis.simao@hotmail.com'),
('Gabriela', 23, 'gabriela.bragantino@live.com'),
('Cibele', null, 'cibele_lins@uol.com.br');
select count(*) from usuarios;
select * from usuarios where idade <=17; 
select * from usuarios where email like '%@gmail%';
select max(idade) from usuarios;
select * from usuarios where idade is null;
select nome, idade from usuarios where idade = (select max(idade) from usuarios);
update usuarios set idade = 27 where idade is null;
delete from usuarios where idade <= 18;
drop database exercicio; 
