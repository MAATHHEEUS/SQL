create database Exerc_Filmes;
use Exerc_Filmes;

-- Crie as tabelas -- 
Create Table Categorias (
ID_CATEGORIA INT auto_increment PRIMARY KEY,
NOME_CATEGORIA varchar(60));

CREATE TABLE DIRETORES (
ID_DIRETOR INT auto_increment primary KEY,
NOME_DIRETOR VARCHAR(60)); 

CREATE TABLE FILMES (
ID_FILME INT AUTO_INCREMENT PRIMARY KEY,
NOME_FILME VARCHAR(60), 
DATA_LANCAMENTO DATE,
CATEGORIA INT,
DIRETOR INT,
FOREIGN KEY (CATEGORIA) REFERENCES Categorias (ID_CATEGORIA));

ALTER TABLE FILMES
ADD CONSTRAINT FOREIGN KEY (DIRETOR) REFERENCES DIRETORES (ID_DERETOR);  

-- Insira os dados --
INSERT INTO CATEGORIAS VALUES (DEFAULT, 'DRAMA'), (DEFAULT, 'ROMANCE'), (default, 'ANIMAÇÃO'), (DEFAULT, 'AÇÃO'), (DEFAULT, 'TERROR'), (DEFAULT, 'COMÉDIA');

INSERT INTO DIRETORES VALUES (default, 'Steven Spielberg'), (default, 'Carlos Saldanha'),(DEFAULT, 'Francis Lawrence'), (DEFAULT, 'Marc Webb'), (DEFAULT, 'Peter Jackson'), (DEFAULT, 'David Yates');

INSERT INTO FILMES VALUES (DEFAULT, 'RIO 2', '2014-03-27', 3, 2),
(DEFAULT, 'JOGOS VORAZES', '2013-11-15', 4, 3), (default, 'O ESPETACULAR HOMEM ARANHA 2', '2014-05-01', 4, 4),
(DEFAULT, 'A LISTA DE Schindler', '1993-12-31', 1, 1), (DEFAULT, 'CAVALO DE GUERA', '2012-01-06', 1, 1);

-- Acrescente um filme de sua preferência --
INSERT INTO FILMES VALUES (DEFAULT, 'VELOZES E FURIOSOS', '2010-10-02', 3, 4);

-- Selecione os filmes do diretor Steven Spielberg --
SELECT F.NOME_FILME FROM FILMES F JOIN DIRETORES D ON F.DIRETOR = D.ID_DIRETOR
WHERE D.NOME_DIRETOR LIKE 'Steven Spielberg';

-- Utilizando Joins faça uma consulta que mostre o nome do filme, data de lançamento, nome do diretor e nome da categoria. --
select	F.NOME_FILME, F.DATA_LANCAMENTO, D.NOME_DIRETOR, C.NOME_CATEGORIA
FROM DIRETORES D JOIN FILMES F ON F.DIRETOR = D.ID_DIRETOR JOIN CATEGORIAS C ON F.CATEGORIA = C.ID_CATEGORIA;

-- Crie uma consulta onde mostre todos os filmes e todos os Diretores, independente de haver um filme -- 
SELECT * FROM FILMES F 
RIGHT JOIN DIRETORES D ON D.ID_DIRETOR = F.DIRETOR;

-- Uma consulta que retorne todas as categorias e todos os filmes, independente de haver um filme --
SELECT * FROM CATEGORIAS C LEFT JOIN FILMES F ON F.CATEGORIA = C.ID_CATEGORIA;