CREATE DATABASE LIVRARIA;
USE LIVRARIA;

CREATE TABLE LIVROS(
	ID INT AUTO_INCREMENT,
    NOME_LIVRO VARCHAR(70),
    NOME_AUTOR VARCHAR(70) NOT NULL,
    SEXO_AUTOR CHAR(1),
    NUMERO_PAGINAS VARCHAR(4),
    NOME_EDITORA VARCHAR(40),
    VALOR_LIVRO DECIMAL(5,2),
    ESTADO_EDITORA CHAR(2),
    ANO CHAR(4),
    PRIMARY KEY (ID)
);

DESC LIVROS;

INSERT INTO LIVROS(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO) VALUES ('Cavaleiro Real', 'Ana Claudia', 'F', '465', 'Atlas', 49.90, 'RJ', '2009'),
																															  ('SQL para leigos', 'João Nunes', 'M', '450', 'Addison', 98.00, 'SP', '2018'),
                                                                                                                              ('Receitas Caseiras', 'Celia Tavares', 'F', '210', 'Atlas', 45.00, 'RJ', '2008'),
                                                                                                                              ('Pessoas Efetivas', 'Eduardo Santos', 'M', '390', 'Beta', 78.99, 'RJ', '2018'),
                                                                                                                              ('Habitos Saudáveis', 'Eduardo Santos', 'M', '630', 'Beta', 150.98, 'RJ', '2019'),
                                                                                                                              ('A Casa Marrom', 'Hermes Macedo', 'M', '250', 'Bubba', 60.00, 'MG', '2016'),
                                                                                                                              ('Estacio Querido', 'Geraldo Francisco', 'M', '310', 'Insignia', 100.00, 'ES', '2015'),
                                                                                                                              ('Pra sempre amigas', 'Leda Silva', 'F', '510', 'Insignia', 78.98, 'ES', '2011'),
                                                                                                                              ('Copas Inesqueciveis', 'Marco Alcantara', 'M', '200', 'Larson', 130.98, 'RS', '2018'),
                                                                                                                              ('O poder da mente', 'Clara Mafra', 'F', '120', 'Continental', 56.58, 'RS', '2017');
                                                                                                                              
SELECT * FROM LIVROS;

SELECT NOME_LIVRO, NOME_EDITORA FROM LIVROS;

SELECT NOME_LIVRO, ESTADO_EDITORA, SEXO_AUTOR FROM LIVROS
WHERE SEXO_AUTOR LIKE '%M%';

SELECT NOME_LIVRO, NUMERO_PAGINAS, SEXO_AUTOR FROM LIVROS
WHERE SEXO_AUTOR LIKE '%F%';

SELECT NOME_LIVRO, VALOR_LIVRO FROM LIVROS
WHERE ESTADO_EDITORA LIKE '%SP%';

SELECT NOME_AUTOR, SEXO_AUTOR FROM LIVROS
WHERE ESTADO_EDITORA LIKE '%RJ%' AND SEXO_AUTOR='M' OR ESTADO_EDITORA LIKE '%SP%';  


SELECT COUNT(ANO) FROM LIVROS
WHERE ANO='2018';
																								