CREATE DATABASE AT3;
USE AT3;
CREATE TABLE itens (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  estoque INT NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);


INSERT INTO itens (nome, estoque, preco) VALUES
('Produto 1', 1, 500.00),
('Produto 2', 2, 550.00),
('Produto 3', 3, 590.00);


CREATE TABLE vendas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item_id INT NOT NULL,
  quantidade INT NOT NULL,
  data_venda DATE NOT NULL
);


INSERT INTO vendas (item_id, quantidade, data_venda) VALUES
(1, 2, '2022-01-05'),
(2, 5, '2021-02-15'),
(1, 3, '2020-03-25'),
(3, 4, '2019-04-25'),
(2, 3, '2018-05-20');


DELIMITER //
CREATE TRIGGER atualizar_estoque_venda
AFTER INSERT ON vendas
FOR EACH ROW
BEGIN
  UPDATE itens
  SET estoque = estoque - NEW.quantidade
  WHERE id = NEW.item_id;
END;
//
DELIMITER ;


SELECT * FROM itens;