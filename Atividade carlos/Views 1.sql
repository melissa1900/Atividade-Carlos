create database Atividade;
use Atividade;
create table administrativo(
Nome varchar(255),
Cargo varchar(255)
);
insert into administrativo(nome,cargo) values
('João','Engenheiro'),
('Raul','Segurança'),
('Neto','Administrativo'),
('Resende','CEO'),
('Paulo','Juridico');

CREATE VIEW vw_funcionarios_departamento AS
SELECT Nome, Cargo
FROM administrativo
WHERE Cargo = 'administrativo';

SELECT * FROM vw_funcionarios_departamento;