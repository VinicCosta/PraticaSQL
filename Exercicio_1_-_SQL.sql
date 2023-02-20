-- Aluno: VINICIUS COSTA DE PAULA
-- 1 - Criar Tabela

CREATE TABLE tbl_cadfun
(
CodFun INTEGER PRIMARY KEY IDENTITY,
Nome VARCHAR(40) NOT NULL,
Depto CHAR(2),
Funcao CHAR(20),
Salario DECIMAL(10,2)
);

-- 2 - Alteração de Campo da Tabela

ALTER TABLE tbl_cadfun
ALTER COLUMN Funcao VARCHAR(30);

-- 3 - Inserção de Registros

INSERT INTO tbl_cadfun (Nome, Depto, Funcao, Salario) 
VALUES ('CARLOS ALBERTO', '3', 'VENDEDOR', 1530.00),
('MARCOS HENRIQUE', 2, 'GERENTE', 8500.00),
('APARECIDA DA SILVA', 3, 'SECRETARIA', 1350.00),
('BRUNA MARQUEZINE', 4, 'ANALISTA', 3500.00),
('BRUNO DE OLIVEIRA', 1, 'ESTAGIÁRIO', 1200.00),
('ADRIANO DOS REIS', 2, 'VENDEDOR', 1530.00),
('CAUA ROCHA', 3, 'VENDEDOR', 1530.00),
('LIZ DE CASTRO', 4, 'VENDEDOR', 1530.00),
('GUSTAVO FERREIRA', 1, 'SECRETARIA', 1350.00),
('MARTHA ANTUNES', 2, 'ANALISTA', 3500.00),
('KAIQUE CARDOSO', 3, 'ESTAGIÁRIO', 1200.00),
('THIAGO MENDES', 4, 'VENDEDOR', 1530.00),
('ISABELLY FONSECA', 1, 'VENDEDOR', 1730.00),
('ALANA CARDOSO', 2, 'VENDEDOR', 1530.00),
('ESTHER DE CARVALHO', 3, 'SECRETARIA', 1350.00),
('MICHAEL MENDES', 4, 'ANALISTA', 3500.00),
('JULIA PINTO', 1, 'ESTAGIÁRIO', 1200.00),
('BÁRBARA FERNANDES', 2, 'VENDEDOR', 1530.00),
('LUIS NEVES', 3, 'VENDEDOR', 1530.00),
('THEO TEIXEIRA', 4, 'VENDEDOR', 1530.00);

-- 4 - Consulta de Registros

SELECT *
FROM tbl_cadfun

SELECT Nome,Funcao
FROM tbl_cadfun

SELECT Nome,Funcao
FROM tbl_cadfun
WHERE Depto IN(1)

SELECT Nome,Funcao
FROM tbl_cadfun
WHERE Depto IN(2)

SELECT Nome,Funcao
FROM tbl_cadfun
WHERE Depto IN(3)

SELECT Nome,Funcao
FROM tbl_cadfun
WHERE Depto IN(4)

SELECT Nome,Funcao,Salario
FROM tbl_cadfun
WHERE Salario > 1500

SELECT Nome,Funcao,Salario
FROM tbl_cadfun
WHERE Salario < 1500

SELECT Nome,Funcao,Salario
FROM tbl_cadfun
WHERE Salario > 1500 AND Depto IN(1)

SELECT Nome,Funcao,Salario
FROM tbl_cadfun
WHERE Salario < 1500 AND Depto IN(2)

SELECT *
FROM tbl_cadfun
ORDER BY Salario ASC

SELECT *
FROM tbl_cadfun
ORDER BY Salario DESC

-- 5 - Exclusão de Registro

DELETE FROM tbl_cadfun
WHERE CodFun IN(17,18,20)

-- 6 - Criação de  novo campo na tabela tblcadfun Admissao e insira as datas de todos os 
-- funcionários por código e com datas que variem entre 01-01-2010 a 31-12-2020.

ALTER TABLE tbl_cadfun
ADD Admissao DATE

UPDATE tbl_cadfun
SET Admissao = '01-01-2010'
WHERE CodFun IN(1)

UPDATE tbl_cadfun
SET Admissao = '01-06-2010'
WHERE CodFun IN(2)

UPDATE tbl_cadfun
SET Admissao = '01-01-2011'
WHERE CodFun IN(3)

UPDATE tbl_cadfun
SET Admissao = '01-06-2011'
WHERE CodFun IN(4)

UPDATE tbl_cadfun
SET Admissao = '01-01-2012'
WHERE CodFun IN(5)

UPDATE tbl_cadfun
SET Admissao = '01-06-2012'
WHERE CodFun IN(6)

UPDATE tbl_cadfun
SET Admissao = '01-01-2013'
WHERE CodFun IN(7)

UPDATE tbl_cadfun
SET Admissao = '01-06-2013'
WHERE CodFun IN(8)

UPDATE tbl_cadfun
SET Admissao = '01-01-2014'
WHERE CodFun IN(9)

UPDATE tbl_cadfun
SET Admissao = '01-06-2014'
WHERE CodFun IN(10)

UPDATE tbl_cadfun
SET Admissao = '01-01-2015'
WHERE CodFun IN(11)

UPDATE tbl_cadfun
SET Admissao = '01-06-2015'
WHERE CodFun IN(12)

UPDATE tbl_cadfun
SET Admissao = '01-01-2016'
WHERE CodFun IN(13)

UPDATE tbl_cadfun
SET Admissao = '01-06-2016'
WHERE CodFun IN(14)

UPDATE tbl_cadfun
SET Admissao = '01-01-2017'
WHERE CodFun IN(15)

UPDATE tbl_cadfun
SET Admissao = '01-06-2017'
WHERE CodFun IN(16)

UPDATE tbl_cadfun
SET Admissao = '01-01-2020'
WHERE CodFun IN(19)

-- 7 - Alteração de Registros

UPDATE tbl_cadfun
SET Salario = 5200
WHERE CodFun IN(7)

UPDATE tbl_cadfun
SET Depto = 2
WHERE Nome IN('BRUNA MARQUEZINE')

UPDATE tbl_cadfun
SET Funcao = 'ASSISTENTE'
WHERE CodFun IN(5)

UPDATE tbl_cadfun
SET Salario = Salario * 1.1

-- 8 - Consultas

SELECT MAX(Salario) AS 'Maior Salário'
FROM tbl_cadfun

SELECT MIN(Salario) AS 'Menor Salário'
FROM tbl_cadfun

SELECT SUM(Salario) AS 'Total de Salários'
FROM tbl_cadfun

SELECT ROUND(AVG(Salario),2) AS 'Média de Salários'
FROM tbl_cadfun

SELECT Depto, MAX(Salario) AS 'Maior Salário'
FROM tbl_cadfun
GROUP BY Depto

SELECT Depto, MIN(Salario) AS 'Maior Salário'
FROM tbl_cadfun
GROUP BY Depto

SELECT Depto, SUM(Salario) AS 'Maior Salário'
FROM tbl_cadfun
GROUP BY Depto

SELECT Depto, ROUND(AVG(Salario),2) AS 'Maior Salário'
FROM tbl_cadfun
GROUP BY Depto

SELECT *
FROM tbl_cadfun
WHERE Nome LIKE 'B%'