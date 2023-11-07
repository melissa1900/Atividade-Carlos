CREATE DATABASE AT5;
USE AT5;


CREATE TABLE tb_funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  cargo VARCHAR(255) 
);


CREATE TABLE tb_dependentes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  funcionario_id INT,
  FOREIGN KEY (funcionario_id) REFERENCES tb_funcionarios(id)
);


INSERT INTO tb_funcionarios (nome, cargo) VALUES
('funcionario 1', 'Vendedor'),
('funcionario 2', 'Carteiro'),
('funcionario 3', 'Engenheiro');


INSERT INTO tb_dependentes (nome, funcionario_id) VALUES
('dependente 1', 1),
('dependente 2', 2),
('dependente 3', 2),
('dependente 4', 3);


DELIMITER //
CREATE TRIGGER exclui_dependentes
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
  DELETE FROM tb_dependentes WHERE funcionario_id = OLD.id;
END;
//
DELIMITER ;


SELECT * FROM tb_funcionarios;
SELECT * FROM tb_dependentes;