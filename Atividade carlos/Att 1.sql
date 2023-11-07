CREATE DATABASE att1;
use att1;

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  data_validade DATE NOT NULL
);


DELIMITER //
CREATE TRIGGER trg_valida_data_validade
BEFORE INSERT ON produtos
FOR EACH ROW
BEGIN
  IF NEW.data_validade < CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Data de validade vencida. Produto não pode ser inserido.';
  END IF;
END//
DELIMITER ;


INSERT INTO produtos (nome, data_validade) VALUES ('Produto 1', '2023-12-31');


INSERT INTO produtos (nome, data_validade) VALUES ('Produto 2', '2022-01-15');


INSERT INTO produtos (nome, data_validade) VALUES ('Produto 3', '2024-06-30');