#criar banco revisao
CREATE DATABASE REVISAO;

USE REVISAO;

#Criar tabela funcionarios
CREATE TABLE funcionarios (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
idade INT,
cargo VARCHAR(50),
salario DECIMAL(10, 2)
);

#Criar tabela projetos
CREATE TABLE projetos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
descricao TEXT,
data_inicio DATE,
data_fim DATE
);

#Criar tabela atribuicoes
CREATE TABLE atribuicoes (
id INT AUTO_INCREMENT PRIMARY KEY,
id_funcionario INT,
id_projeto INT,
papel VARCHAR(50),
FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id),
FOREIGN KEY (id_projeto) REFERENCES projetos(id)
);

#Inserir dados na tabela funcionarios
INSERT INTO funcionarios (nome, idade, cargo, salario)VALUES (
'João', 30, 'Desenvolvedor', 5000.00),
('Maria', 25, 'Analista de Dados', 4500.00),
('Carlos', 35, 'Gerente de Projetos', 7000.00);

#Inserir dados na tabela projetos
INSERT INTO projetos (nome, descricao, data_inicio, data_fim) VALUES (
'Projeto A', 'Desenvolvimento de um novo sistema', '2023-01-01', '2023-06-30'),
('Projeto B', 'Implementação de um banco de dados distribuído', '2023-03-15', '2023-09-30');

#Inserir dados na tabela atribuicoes
INSERT INTO atribuicoes (id_funcionario, id_projeto, papel) VALUES (
1, 1, 'Programador'),
(2, 1, 'Analista de Dados'),
(3, 2, 'Gerente de Projeto');
    
SELECT * FROM funcionarios; #Selecione todos os funcionários.
SELECT NOME, descricao FROM projetos; #Selecione os projetos com suas descrições
SELECT * FROM funcionarios WHERE salario > 5000; #Selecione os funcionários com salário maior que 5000.
SELECT COUNT(*) FROM funcionarios; #Conte o número total de funcionários.
SELECT * FROM projetos WHERE data_inicio > '2023-01-01'; # Selecione os projetos que começam depois de '2023-01-01'. 
SELECT * FROM funcionarios ORDER BY idade ASC; # Ordene os funcionários por idade em ordem crescente. 
SELECT * FROM funcionarios WHERE nome LIKE 'A%'; # Selecione os funcionários cujo nome começa com 'A'.
SELECT COUNT(*) FROM projetos; # Conte quantos projetos estão na tabela.
SELECT COUNT(*) FROM funcionarios WHERE idade > 35; # Conte quantos funcionários têm mais de 35 anos. 

/*ASC – Ordem crescente
DESC – Ordem descendente*