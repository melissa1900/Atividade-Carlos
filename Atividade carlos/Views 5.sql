create database att5;
use att5;

create table pedidos (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Numero_pedidos INT,
  status VARCHAR(255),
  Data_entrega DATE 
);

insert into pedidos (Numero_pedidos, status, Data_entrega) values
(1, 'Pendente', '2022-01-15'),
(2, 'Entregue', '2021-01-10'),
(3, 'Pendente', '2020-01-20'),
(4, 'Entregue', '2019-01-05'),
(5, 'Pendente', '2018-01-25');

CREATE VIEW vw_pedidos_pendentes AS
SELECT numero_pedidos, status, data_entrega
FROM pedidos
WHERE status = 'Pendente' AND data_entrega >= CURDATE();


SELECT * FROM vw_pedidos_pendentes;