--1 
--A
CREATE DATABASE ATV1;
use ATV1;

CREATE TABLE NOMES(
NOME VARCHAR(100) NOT NULL
);

INSERT INTO NOMES(NOME) VALUES
('Roberta'),
('Roberto'),
('Maria Clara'),
('João');
SELECT * FROM NOMES;

--B
SELECT UPPER(NOME) AS NOME_GRANDE FROM nomes;

--C
SELECT LENGTH(NOME) AS TAMANHO_NOME FROM nomes;

--D
SELECT CONCAT('Sr-', nome) from NOMES WHERE NOME LIKE '%O' 
union 
SELECT CONCAT('Sra-', nome) from NOMES WHERE NOME LIKE '%A';


--2
--A
CREATE TABLE PRODUTOS (
    produto VARCHAR(255),
    preco DECIMAL(10, 2),
    quantidade INT
);
INSERT INTO PRODUTOS (produto, preco, quantidade)

--B
VALUES ('Televisão', ROUND(10.4567, 2), 5);

--C
SELECT ABS(quantidade) AS valor_ABS_quant FROM PRODUTOS;

--D
SELECT AVG(preco) AS media FROM PRODUTOS;


--3
--A
CREATE TABLE EVENTOS (
    data_eventos DATE
);

INSERT INTO EVENTOS (data_eventos) VALUES
('2023-10-09'),
('2023-10-10'),
('2023-10-14');

--B
INSERT INTO EVENTOS (data_eventos) VALUES (NOW());
