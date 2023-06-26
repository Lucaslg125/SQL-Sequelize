create Table EMPREGADO (

ID_EMPREGADO INT PRIMARY KEY,
FK_ID_SUPERVISOR INT,
PRIMEIRO_NOME VARCHAR2 (100) NOT NULL,
ULTIMO_NOME VARCHAR2(100) NOT NULL,
EMAIL VARCHAR2(100) NOT NULL,
DATA_NASC_FUNC DATE DEFAULT SYSDATE,
DATA_FIM_FUN DATE DEFAULT NULL,
CONSTRAINT FK_SUP FOREIGN KEY EMPREGADO (ID_EMPREGADO)

);

SELECT TABLE EMPREGADO PRIMEIRO_NOME;

SELECT * FROM Series
WHERE Nota > 4;

INSERT INTO Series (Title,
Nota) Values ("La casa de
papel", "8");

DROP DATABE Universe_API_developer


CREATE TABLE planets (
  name VARCHAR (50) NOT NULL,
  star_name VARCHAR (50) NOT NULL,
  code VARCHAR (20) UNIQUE NOT NULL,
  discovery_date DATE,
  satellites INT,
  has_life BOOLEAN
);

--Alterar Tabela adicionando uma coluna a Ela 

ALTER TABLE planets ADD COLUMN description text;

\d planets

ALTER TABLE planets DROP COLUMN description;

--Para alterar a tabela incluindo uma Constraint em uma coluna

ALTER TABLE planets ADD CHECK (satellites > 1);

--Para alterar a tabela incluindo um valor default para uma coluna

ALTER TABLE planets ALTER COLUMN has_life SET DEFAULT true;

--Para renomear uma coluna:

ALTER TABLE planets RENAME COLUMN sun_name TO star_name;

--Para inserir uma nova row (linha na tabela)

INSERT INTO planets (name, star_name, code, discovery_date, satellites)
  VALUES('X45', 'RIMURU', 'SDF4FD8X', '1961-06-16', 10);

 --Consultar valores da tabela

  SELECT * FROM planets;

--Consulte apenas os valores das colunas name e star_name das rows nos bancos:

SELECT name, star_name, FROM planets;
--Selecione do banco apenas planetas onde a estrela é o sol:

SELECT * FROM planets WHERE star_name = 'Sol';

--Selecione do banco apenas planetas que tem vida:

--Agora para atualizar o planeta 'X45' (primeiro do exemplo), 
UPDATE planets SET star_name = 'Tempest' WHERE id = 1;

--Para vermos a mudança (selecionando apenas o planeta afetado), rode:

SELECT * FROM planets WHERE id = 1;

--Você também poderia rodar o comando a baixo para atualizar o campo e retornar a row no final do processo:

UPDATE planets SET star_name = 'Tempest' WHERE id = 1 RETURNING *;

--Para apagarmos uma row

DELETE FROM planets WHERE id = 3;

--Crie uma tabela chamada Users com as seguintes colunas (atribuindo a cada coluna um tipo adequado e garantindo que elas não sejam nulas):

CREATE TABLE users(
  id serial PRIMARY KEY,
  name VARCHAR (50) NOT NULL,
  profession VARCHAR (50) NOT NULL,
  birthday DATE NOT NULL

);

--INSERIR VALORES NA TABELA

INSERT INTO users(name, profession, birthday) VALUES('João', 'Programador', '1991-11-20');

INSERT INTO users(name, profession, birthday) VALUES('Marta', 'Assistente', '1987-11-20');

-- Inclua na tabela a coluna 'vegan' e atualize o usuário João marcando que sim e a usuária Marta marcando que não.

ALTERAR TABLE users ADD COLUMN vegan boolean;

atualize o usuário João marcando que sim e a usuária Marta marcando que não
UPDATE users SET vegan = true WHERE id = 1;


--Lista por id os dados do João e depois os dados da Marta.
UPDATE users SET vegan = false WHERE id = 2;

-- Apague todas as rows
DELETE FROM Users;

-- Apague a tabela
DROP TABLE users;


