--Aluno: Vinicius Costa de Paula
-- 1 - Criar Tabela
CREATE DATABASE BD_Acre

CREATE TABLE tbl_Microrregioes(
ID_Microrregiao SMALLINT PRIMARY KEY,
Microrregiao varchar(40));

CREATE TABLE tbl_Municipios(
ID_Municipios SMALLINT IDENTITY PRIMARY KEY,
Nome_Municipio varchar(40),
Estado VARCHAR(10) DEFAULT 'Acre',
ID_Microrregiao SMALLINT,
CONSTRAINT fk_ID_Microrregiao FOREIGN KEY (ID_Microrregiao) REFERENCES tbl_Microrregioes(ID_Microrregiao),
PIB decimal(10,2),
Populacao VARCHAR(10));

-- 2 - Inserção de Registros

INSERT INTO tbl_Microrregioes (ID_Microrregiao, Microrregiao)
VALUES (1,'Brasiléia'), (2,'Cruzeiro do Sul'),(3,'Rio Branco'), (4,'Sena Madureira'), (5,'Tarauacá');

INSERT INTO tbl_Municipios (Nome_Municipio, ID_Microrregiao, PIB, Populacao)
VALUES ('Acrelândia',3, 204877.98, 13613),('Assis Brasil',1,72613.39,6610), ('Brasiléia',1,341511.52,23378), ('Bujari',3,129281.30,9173), 
('Capixaba',3,149441.17,10170), ('Cruzeiro do Sul',2,1153033.93,80953), ('Epitaciolândia',1,256048.03,16417), ('Feijó',5,310266.25,32398), 
('Jordão',5,69165.91,7330), ('Mâncio Lima',2,188314.42,16795), ('Manoel Urbano',4,94961.47,8514), ('Marechal Thaumaturgo',2,162962.58,16380), 
('Plácido de Castro',3,237311.74,17979), ('Porto Acre',3,196189.55,16396), ('Porto Walter',2,92299.60,10453), ('Rio Branco',3,8192366.10,363928),
('Rodrigues Alves',2,166480.98,16475),('Santa Rosa do Purus',4,51463.89,5593), ('Sena Madureira',4,478483.67,41036), 
('Senador Guiomard',3,326351.41,20992), ('Tarauacá',5,388110.25,38201), ('Xapuri',1,197162.49,17317);

-- 3 - Consulta de Registros
SELECT *
FROM tbl_Municipios

SELECT Muni.Nome_Municipio, Micr.Microrregiao
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao

SELECT Muni.Nome_Municipio, Micr.Microrregiao, Muni.PIB, Muni.Populacao
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao
WHERE Muni.ID_Microrregiao IN(1)

SELECT Muni.Nome_Municipio, Micr.Microrregiao, Muni.PIB, Muni.Populacao
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao
WHERE Muni.ID_Microrregiao IN(2)

SELECT Muni.Nome_Municipio, Micr.Microrregiao, Muni.PIB, Muni.Populacao
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao
WHERE Muni.ID_Microrregiao IN(3)

SELECT Muni.Nome_Municipio, Micr.Microrregiao, Muni.PIB, Muni.Populacao
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao
WHERE Muni.ID_Microrregiao IN(4)

SELECT Muni.Nome_Municipio, Micr.Microrregiao, Muni.PIB, Muni.Populacao
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao
WHERE Muni.ID_Microrregiao IN(5)

SELECT Muni.Nome_Municipio, Micr.Microrregiao, Muni.PIB
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao
WHERE Muni.Populacao > 10000

SELECT Muni.Nome_Municipio, Micr.Microrregiao, Muni.PIB
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao
WHERE Muni.Populacao < 10000

SELECT Muni.Nome_Municipio, Micr.Microrregiao, Muni.PIB
FROM tbl_Municipios AS Muni
INNER JOIN tbl_Microrregioes AS Micr ON Muni.ID_Microrregiao = Micr.ID_Microrregiao
WHERE Muni.PIB > 150000 AND (Muni.ID_Microrregiao IN(1) OR Muni.ID_Microrregiao IN(2))

SELECT *
FROM tbl_Municipios
ORDER BY PIB ASC

SELECT *
FROM tbl_Municipios
ORDER BY PIB DESC

-- 4 - Exclusão de Registro

DELETE FROM tbl_Municipios
WHERE ID_Municipios IN(19,21,22)

-- 5 - Alteração de Registro

UPDATE tbl_Municipios
SET PIB = 18000
WHERE ID_Municipios = 7

UPDATE tbl_Municipios
SET ID_Microrregiao = 2
WHERE Nome_Municipio = 'Porto Acre'

UPDATE tbl_Municipios
SET Populacao = 13500
WHERE ID_Municipios IN(5)

UPDATE tbl_Municipios
SET PIB = PIB * 1.1

-- 6 - Consultas

SELECT MAX(PIB) AS 'Maior PIB'
FROM tbl_Municipios

SELECT MIN(PIB) AS 'Menor PIB'
FROM tbl_Municipios

SELECT SUM(PIB) AS 'Total PIB'
FROM tbl_Municipios

SELECT AVG(PIB) AS 'Média do PIB'
FROM tbl_Municipios

SELECT MAX(PIB) 'Maior PIB', ID_Microrregiao
FROM tbl_Municipios
GROUP BY ID_Microrregiao

SELECT MIN(PIB) 'Menor PIB', ID_Microrregiao
FROM tbl_Municipios
GROUP BY ID_Microrregiao

SELECT SUM(PIB) 'Total de PIB', ID_Microrregiao
FROM tbl_Municipios
GROUP BY ID_Microrregiao

SELECT AVG(PIB) 'Média do PIB', ID_Microrregiao
FROM tbl_Municipios
GROUP BY ID_Microrregiao

SELECT *
FROM tbl_Municipios
WHERE Nome_Municipio LIKE('S%')