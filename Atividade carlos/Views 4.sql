create database att4;
use att4;


create table Produtos (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) ,
  Preco DECIMAL(10, 2) 
);


insert into Produtos (nome, preco) values
('Nerf', 120.50),
('.45', 80.99),
('9MM', 150.75),
('Xbox', 90.25),
('balanca de precição', 110.00);


CREATE VIEW vw_produtos_caros AS
SELECT nome, preco
FROM produtos
WHERE preco > 100;


SELECT * FROM vw_produtos_caros;