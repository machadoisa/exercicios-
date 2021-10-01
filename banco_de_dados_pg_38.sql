exercicio 1 
create database exercicio_join; 
use exercicio_join;

exercico 2
create table cursos(
codigo int auto_increment,
curso varchar(20),
primary key (codigo)
);

exercicio 3
create table clientes(
codigo int auto_increment,
cliente varchar(30),
codigo_curso int,
primary key (codigo),
foreign key (codigo_curso) references cursos(codigo)
);

exercicio 4
insert into cursos (curso) values 
('java'),
('C#'),
('python'),
('php'),
('node.js');

exercicio 5 
insert into clientes (cliente, codigo_curso) values
("larissa", 3),
("gabriel", 1),
("jeans", 1),
("gabriella", 2),
("robson", 3),
("isabella", 3),
("eduardo", 2),
("juliana", 3),
("carlos", 2),
("lorena", 1);

exercicio 6 
select clientes.cliente, cursos.curso 
from clientes inner join cursos 
on clientes.codigo_curso = cursos.codigo;

exercicio 7 
select cursos.curso, count(clientes.cliente) 
from clientes right join cursos 
on clientes.codigo_curso = cursos.codigo
group by cursos.codigo;

