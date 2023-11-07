CREATE DATABASE AT4;
USE AT4;

CREATE TABLE IF NOT EXISTS tb_funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  cargo VARCHAR(255)
);
INSERT INTO tb_funcionarios (nome, cargo) VALUES
('Cleber', 'Gerente'),
('Jorge', 'Psicologo'),
('Rian', 'Testador');



CREATE TABLE IF NOT EXISTS tb_funcionarios_demitidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  cargo VARCHAR(255) 
);


DELIMITER //
CREATE TRIGGER after_delete_funcionario
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
  INSERT INTO tb_funcionarios_demitidos (nome, cargo)
  VALUES (OLD.nome, OLD.cargo);
END;
//
DELIMITER ;

SELECT * FROM tb_funcionarios;

DELETE FROM tb_funcionarios WHERE id = 2;

SELECT * FROM tb_funcionarios_demitidos;