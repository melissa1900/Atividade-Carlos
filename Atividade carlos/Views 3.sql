create database att3;
use att3;

create table Clientes (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(255),
  Id_vendedor INT
);


insert into clientes (nome, id_vendedor) values
('Jean', 1),
('Jah', 2),
('OrlandoPT', 1),
('Balotele', 3);


create table Vendedores (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(255)
);


insert into vendedores (nome) values
('Juan'),
('Junior'),
('Nadson');


create view vw_relacionamento_cliente_vendedor as
select c.nome as cliente, v.nome as vendedor
from clientes c
join vendedores v on c.id_vendedor = v.id;

SELECT * FROM vw_relacionamento_cliente_vendedor;