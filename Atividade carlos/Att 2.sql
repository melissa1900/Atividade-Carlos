CREATE DATABASE AT2;
USE AT2;
CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);


INSERT INTO produtos (nome, preco) VALUES
('Produto 1', 10.00),
('Produto 2', 30.00),
('Produto 3', 55.00);


DELIMITER //
CREATE TRIGGER aumentar_preco_produto
BEFORE UPDATE ON produtos
FOR EACH ROW
BEGIN
  SET NEW.preco = NEW.preco * 1.10;
END;
//
DELIMITER ;


SET SQL_SAFE_UPDATES = 0;


UPDATE produtos SET preco = 50.00 WHERE nome = 'Produto 1';


SELECT * FROM produtos;