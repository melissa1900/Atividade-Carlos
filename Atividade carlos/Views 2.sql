create database att2;
use att2;

create table estoque (
  id INT AUTO_INCREMENT PRIMARY KEY,
  Produto VARCHAR(255),
  Quantidade INT 
);


insert into Estoque (produto, quantidade) values
('Pão', 4),
('Pão frances', 10),
('Pão de milho', 1),
('Pão de leite', 9);


create view vw_estoque_insuficiente as
select produto, quantidade
from estoque
where quantidade < 5;


SELECT * FROM vw_estoque_insuficiente;