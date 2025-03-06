/*DDL Comando de Definiçãode Estrutura*/
create database biblioteca_uirapuru;

/*Diz ao SGBDR que vamos usar este banco de dados daqui pra frente*/
use biblioteca_uirapuru;

create table livros (
	id int PRIMARY KEY,
    titulo varchar(255),
    autor varchar(255),
    preco decimal(10, 2),
    editora varchar(255),
    genero varchar(255),
    ano_publicacao int
);

/*Removendo uma coluna da tabela*/
alter table livros drop genero;
alter table livros drop editora;


select * from livros;

/*Comando para adicionar uma coluna em uma tabela*/
alter table livros add CNPJ INT;
ALTER TABLE livros modify CNPJ varchar(25);
 
DESC livros; 
 
 /*Alterar o Tipo de Dado de uma coluna, exemplo:
 em 2025, o campo de CNPJ passará a ser alfanumerico 
 então ele não pode ser INT, vamos alterar*/

/*Altera a coluna, para impedir que ela seja nula
ou seja, ela vai precisar ter registros, senão dara erro. */
ALTER TABLE livros MODIFY titulo varchar(255) NOT NULL;
ALTER TABLE livros MODIFY autor varchar(255) NOT NULL;

/*Remover a coluna CNPJ*/
ALTER TABLE livros drop CNPJ; 

/*Inserir multiplos registros*/
INSERT INTO livros (id, titulo, autor) VALUES
(1, 'Quebrando a cabeça com Java', 'Josefino'),
(2, 'Java 8', 'Peter Jandl'),
(3, 'Google Android', 'Ricardo Lecheta');

UPDATE livros
SET preco = 99.99
WHERE id = 1;

TRUNCATE TABLE livros;