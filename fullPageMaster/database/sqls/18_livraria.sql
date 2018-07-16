CREATE TABLE Editora (
id serial,
nome varchar(100) NOT NULL,
CONSTRAINT edi_codeditora_pk PRIMARY KEY(id)
);

CREATE TABLE Assunto (
id serial,
sigla char(1),
assunto varchar(100) NOT NULL,
CONSTRAINT ass_sigla_pk PRIMARY KEY(id)
);


CREATE TABLE Livro (
id serial,
titulo varchar(50) NOT NULL,
datapublicacao timestamp default now(),
numpags integer,
preco numeric(6,2),
editora_id integer NOT NULL,
assunto_id integer NOT NULL,
CONSTRAINT liv_codlivro_pk PRIMARY KEY(id),
CONSTRAINT liv_edi__codeditora_fk FOREIGN KEY(editora_id) REFERENCES EDITORA(id),
CONSTRAINT liv_ass_sigla_fk FOREIGN KEY(assunto_id) REFERENCES ASSUNTO(id)
);


CREATE TABLE autor(
id serial,
CPF varchar(20) NOT NULL,
datanasc date,
nome varchar(150) NOT NULL,
nacionalidade varchar(100),
matricula numeric(10),
CONSTRAINT aut_matricula_pk PRIMARY KEY(id),
CONSTRAINT aut_cpf_uk UNIQUE(cpf)
);



CREATE TABLE Livro_autoria (
id serial,
livro_id integer NOT NULL,
autor_id integer NOT NULL,
CONSTRAINT livaut_liv_codlivro_fk FOREIGN KEY(livro_id) REFERENCES LIVRO(id),
CONSTRAINT livaut_aut_matricula_fk FOREIGN KEY(autor_id) REFERENCES AUTOR(id)
);


CREATE TABLE Loja (
id serial,
cnpj numeric(10),
nome varchar(150) NOT NULL,
CONSTRAINT loj_cnpj_pk PRIMARY KEY(id),
CONSTRAINT aut_cnpj_uk UNIQUE(cnpj)
);




CREATE TABLE cartao(
  id serial,
  codcartao numeric(10),
  tipocartao varchar(20),
  CONSTRAINT car_codcar_pk primary key(id),
  CONSTRAINT aut_codcartao_uk UNIQUE(codcartao)
);



CREATE TABLE Cliente_v (
id serial,
cpf numeric(10),
datanasc date,
nome varchar(150) NOT NULL,
nacionalidade varchar(100),
cartao_id integer,
CONSTRAINT aut_cpf_pk PRIMARY KEY(id),
CONSTRAINT car_cli_codcart_fk FOREIGN KEY(cartao_id) REFERENCES cartao(id)
);




CREATE TABLE Venda (
id serial,
idvenda integer,
quantidade integer NOT NULL,
total numeric(13,2),
datavenda timestamp default now(),
loja_id integer NOT NULL,
livro_id integer not NuLL,
cliente_id integer not NuLL,
CONSTRAINT ven_codlivro_pk PRIMARY KEY(id),
CONSTRAINT ven_liv_codlivro_fk FOREIGN KEY(livro_id) REFERENCES LIVRO(id),
CONSTRAINT ven_loj_cnpj_fk FOREIGN KEY(loja_id) REFERENCES LOJA(id),
CONSTRAINT ven_cli_cpf_fk FOREIGN KEY(cliente_id) REFERENCES CLIENTE(id)
);


CREATE TABLE EDITORAAUX(
id serial,
CODEDITORA CHAR(10),
NOME varchar(100),
CONSTRAINT edi_codeditora2_pk primary key(id)
);

CREATE TABLE LOG(usuario varchar(100), datahora varchar(25));

CREATE TABLE AUDITORIA(
                      id serial,
                      livro_id integer,
                      precoantigo numeric(6,2),
                      preconovo numeric(6,2),
                      datahora timestamp default now()
                      );


--COMANDOS DML - POPULANDO O BANCO DE DADOS
--TABELA EDITORA

INSERT INTO EDITORA(id, nome) VALUES(1,'MIRANDELA EDITORA');
INSERT INTO EDITORA(id, nome) VALUES(2,'EDITORA VIA-NORTE');
INSERT INTO EDITORA(id, nome) VALUES(3,'EDITORA ILHAS TIJUCA');
INSERT INTO EDITORA(id, nome) VALUES(4,'MARIA JOSE EDITORA');


--TABELA ASSUNTO
INSERT INTO ASSUNTO(sigla, assunto) VALUES('B','banco de dados');
INSERT INTO ASSUNTO(sigla, assunto)  VALUES('P', 'programacao');
INSERT INTO ASSUNTO(sigla, assunto)  VALUES('R', 'redes');
INSERT INTO ASSUNTO(sigla, assunto)  VALUES('S', 'sistemas operacionais');


--TABELA LIVRO
INSERT INTO LIVRO(id, preco, numpags, titulo, datapublicacao, editora_id, assunto_id) VALUES (1, 31.25, 55, 'BANCO DE DADOS PARA A WEB',now(), 1, 1);
INSERT INTO LIVRO(id, preco, numpags, titulo, datapublicacao, editora_id, assunto_id) VALUES (2, 30.55, 47, 'PROGRAMANDO EM LINGUAGEM C', now(), 1, 2);
INSERT INTO LIVRO(id, preco, numpags, titulo, datapublicacao, editora_id, assunto_id) VALUES (3, 111.52, 103, 'PROGRAMANDO EM LINGUAGEM C++', now(), 3, 2);
INSERT INTO LIVRO(id, preco, numpags, titulo, datapublicacao, editora_id, assunto_id) VALUES (4, 48.99, 66, 'BANCO DE DADOS NA BIOINFORMATICA',now(), 2, 1);
INSERT INTO LIVRO(id, preco, numpags, titulo, datapublicacao, editora_id, assunto_id) VALUES (5, 42.20, 93, 'REDES DE COMPUTADORES', now(), 2, 3);


--TABELA AUTOR

INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(111, 890001, '1978-08-08 00:00:00', 'Luciano Blomberg', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(112, 780002, '1959-08-03 00:00:00', 'Carlos Padilha', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(113, 920003, '1981-12-11 00:00:00', 'Ana Silveira Escobar', 'Colombiana');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(114, 810004, '1963-11-01 00:00:00', 'César Oliveira', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(115, 820005, '1965-04-25 00:00:00', 'Marcos Andrade', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(116, 890006, '1979-08-03 00:00:00', 'Carla Maldonado Silva', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(117, 780007, '1959-05-24 00:00:00', 'Carlos Tenório', 'Equatoriana');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(118, 770008, '1960-11-29 00:00:00', 'Maria Fonseca', 'Brasileira');

--TABELA LIVRO_AUTORIA

INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(1,1);
--INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(1,112);
--INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(1,113);
INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(2,2);
--INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(3,114);
INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(3,5);
--INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(4,111);
INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(4,6);
INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(5,7);
--INSERT INTO LIVRO_AUTORIA(livro_id, autor_id) VALUES(5,118);



--TABELA CARTAO
INSERT INTO CARTAO(ID, tipocartao) VALUES(1, 'SPECIAL');
INSERT INTO CARTAO(ID, tipocartao) VALUES(2, 'PREMIUM');
INSERT INTO CARTAO(ID, tipocartao) VALUES(3, 'GOLD');
INSERT INTO CARTAO(ID, tipocartao) VALUES(4, 'GOLD PLUS');


--TABELA CLIENTE
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(920003, '1981-11-12 00:00:00', 'Ana Escobar', 'Colombiana',1);          
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890006, '1979-08-13 00:00:00', 'Carla Silva', 'Brasileira',1);         
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890106, '1979-08-15 00:00:00', 'João Inácio Magalhães', 'Brasileira',2);    
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890206, '1977-10-29 00:00:00', 'César Gonçalves', 'Brasileira',2);           
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890306, '1976-03-30 00:00:00', 'Flávio Aguiar Fonseca', 'Brasileira',2);        
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890406, '1966-07-02 00:00:00', 'Henrique Meirelles', 'Brasileira',2);     
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890506, '1969-09-01 00:00:00', 'Cleide Castanheira', 'Brasileira',2);
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890606, '1982-10-15 00:00:00', 'Júlio Siqueira', 'Brasileira',2);
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890706, '1951-09-02 00:00:00', 'Elza Saldanha Prado', 'Brasileira',2);
INSERT INTO Cliente_v(cpf, datanasc, nome, nacionalidade,CARTAO_ID) VALUES(890806, '1971-08-08 00:00:00', 'Marco Antônio Rossi', 'Brasileira',2);


--TABELA LOJA
INSERT INTO LOJA(cnpj, nome) VALUES(99991, 'Tabajara 1');
INSERT INTO LOJA(cnpj, nome) VALUES(99992, 'Tabajara 2');

--TABELA VENDA

INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(1,1,31.20,'2008-06-02 00:00:00',1,1,1);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(1,1,48.00,'2008-06-12 00:00:00',1,4,1);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(2,3,126.00,'2008-06-13 00:00:00',1,5,1);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(3,2,334.50,'2009-06-14 00:00:00',1,3,2);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(3,1,42.00,'2009-06-14 00:00:00',1,5,2);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(4,1,31.20,'2008-06-12 00:00:00',1,1,3);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(4,1,42.00,'2008-06-12 00:00:00',1,5,3);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(4,1,111.50,'2008-06-12 00:00:00',1,3,4);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(5,2,62.40,'2008-06-15 00:00:00',1,1,2);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(5,1,48.00,'2008-06-15 00:00:00',1,4,2);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(6,3,334.50,'2008-06-16 00:00:00',1,3,6);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(7,1,111.50,'2008-06-12 00:00:00',1,3,7);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(7,1,48.00,'2008-06-12 00:00:00',1,4,7);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(7,1,42.00,'2008-06-12 00:00:00',1,5,7);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(8,2,84.00,'2008-06-13 00:00:00',1,5,6);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(9,1,31.20,'2008-06-13 00:00:00',1,1,6);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(9,1,48.00,'2008-06-13 00:00:00',1,4,6);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(10,5,156.00,'2008-06-15 00:00:00',1,1,5);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(11,2,96.00,'2008-06-16 00:00:00',1,4,5);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(11,2,84.00,'2008-06-16 00:00:00',1,5,5);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(12,1,42.00,'2008-06-14 00:00:00',1,4,6);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(13,1,30.00,'2008-06-12 00:00:00',2,2,5);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(13,1,111.50,'2008-06-12 00:00:00',2,3,5);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(14,1,31.20,'2008-06-12 00:00:00',2,1,6);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(15,8,99.50,'2008-06-12 00:00:00',2,5,8);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(15,5,150.00,'2008-06-12 00:00:00',2,2,8);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(15,4,446.00,'2008-06-12 00:00:00',2,3,8);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(16,1,31.20,'2008-06-13 00:00:00',2,1,8);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(17,1,31.20,'2008-06-13 00:00:00',2,1,9);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(17,1,30.00,'2008-06-13 00:00:00',2,2,9);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(17,1,111.50,'2008-06-13 00:00:00',2,3,9);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(17,1,12.5,'2008-06-13 00:00:00',2,5,9);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(18,1,30.00,'2008-06-14 00:00:00',2,2,2);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(19,2,60.00,'2008-06-14 00:00:00',2,2,9);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(19,2,84.00,'2008-06-14 00:00:00',2,4,9);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(20,1,111.50,'2008-06-15 00:00:00',2,3,1);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(21,1,30.00,'2008-06-16 00:00:00',2,2,1);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(21,1,14.50,'2008-06-16 00:00:00',2,5,2);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(22,2,62.40,'2008-06-15 00:00:00',2,1,3);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, loja_id, livro_id, cliente_id) VALUES(23,1,30.00,'2008-06-16 00:00:00',2,2,6);


--TABELA EDITORAAUX
INSERT INTO EDITORAAUX(codeditora, nome) VALUES(6, 'EDITORA MACEDO');
INSERT INTO EDITORAAUX(codeditora, nome) VALUES(7, 'EDITORA SILVA');
INSERT INTO EDITORAAUX(codeditora, nome) VALUES(8, 'GLOBO');
INSERT INTO EDITORAAUX(codeditora, nome) VALUES(9, 'EDIPUCRS');




















