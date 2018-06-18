CREATE TABLE Editora (
codeditora number(10),
nome varchar2(100) NOT NULL,
CONSTRAINT edi_codeditora_pk PRIMARY KEY(codeditora)

);

CREATE TABLE Assunto (
sigla char(1),
assunto varchar2(100) NOT NULL,
CONSTRAINT ass_sigla_pk PRIMARY KEY(sigla)

);

CREATE TABLE Livro (
titulo varchar2(50) NOT NULL,
datapublicacao Date,
codlivro number(10),
numpags number(4),
preco number(6,2),
codeditora number(10)NOT NULL,
sigla char(1)NOT NULL,
CONSTRAINT liv_codlivro_pk PRIMARY KEY(codlivro),
CONSTRAINT liv_edi__codeditora_fk FOREIGN KEY(codeditora) REFERENCES EDITORA(codeditora),
CONSTRAINT liv_ass_sigla_fk FOREIGN KEY(sigla) REFERENCES ASSUNTO(sigla)

);


CREATE TABLE Autor (
CPF number(10) NOT NULL,
datanasc date,
nome varchar2(150) NOT NULL,
nacionalidade varchar2(100),
matricula number(10),
CONSTRAINT aut_matricula_pk PRIMARY KEY(matricula),
CONSTRAINT aut_cpf_uk UNIQUE(cpf)

);



CREATE TABLE Livro_autoria (
codlivro number(10) NOT NULL,
matricula number(10) NOT NULL,
CONSTRAINT livaut_liv_codlivro_fk FOREIGN KEY(codlivro) REFERENCES LIVRO(codlivro),
CONSTRAINT livaut_aut_matricula_fk FOREIGN KEY(matricula) REFERENCES AUTOR(matricula)

);



CREATE TABLE Loja (
CNPJ number(10),
nome varchar2(150) NOT NULL,
CONSTRAINT loj_cnpj_pk PRIMARY KEY(cnpj)

);




CREATE TABLE CARTÃO(
        codcartao number(10),
        tipocartao varchar2(20),
        CONSTRAINT car_codcar_pk primary key(codcartao)

);



CREATE TABLE Cliente (
CPF number(10),
datanasc date,
nome varchar2(150) NOT NULL,
nacionalidade varchar2(100),
codcartao number(10),
CONSTRAINT aut_cpf_pk PRIMARY KEY(cpf),
CONSTRAINT car_cli_codcart_fk FOREIGN KEY(codcartao) REFERENCES CARTÃO(codcartao)


);




CREATE TABLE Venda (
idvenda number(10),
quantidade number(5) NOT NULL,
total number(6,2),
datavenda date,
CNPJ number(10) NOT NULL,
codlivro number(10),
cpf number(10) NOT NULL,
CONSTRAINT ven_codlivro_pk PRIMARY KEY(idvenda, codlivro),
CONSTRAINT ven_liv_codlivro_fk FOREIGN KEY(codlivro) REFERENCES LIVRO(codlivro),
CONSTRAINT ven_loj_cnpj_fk FOREIGN KEY(cnpj) REFERENCES LOJA(cnpj),
CONSTRAINT ven_cli_cpf_fk FOREIGN KEY(cpf) REFERENCES CLIENTE(cpf)

);

CREATE TABLE EDITORAAUX(
CODEDITORA CHAR(10),
NOME VARCHAR2(100),
CONSTRAINT edi_codeditora2_pk primary key(codeditora)

);

CREATE TABLE LOG(usuario varchar2(100), datahora varchar2(25));

CREATE TABLE AUDITORIA(
                      codlivro number(10),
                      precoantigo number(6,2),
                      preconovo number(6,2),
                      datahora varchar2(25)
                      );







--COMANDOS DML - POPULANDO O BANCO DE DADOS

--TABELA EDITORA

INSERT INTO EDITORA(codeditora, nome) VALUES(1,'MIRANDELA EDITORA');
INSERT INTO EDITORA(codeditora, nome) VALUES(2,'EDITORA VIA-NORTE');
INSERT INTO EDITORA(codeditora, nome) VALUES(3,'EDITORA ILHAS TIJUCA');
INSERT INTO EDITORA(codeditora, nome) VALUES(4,'MARIA JOSÉ EDITORA');

--TABELA ASSUNTO

INSERT INTO ASSUNTO(sigla, assunto) VALUES('B','banco de dados');
INSERT INTO ASSUNTO(sigla, assunto)  VALUES('P', 'programação');
INSERT INTO ASSUNTO(sigla, assunto)  VALUES('R', 'redes');
INSERT INTO ASSUNTO(sigla, assunto)  VALUES('S', 'sistemas operacionais');


--TABELA LIVRO

INSERT INTO LIVRO(codlivro, preco, numpags, titulo, datapublicacao, codeditora, sigla) VALUES (1, 31.25, 55, 'BANCO DE DADOS PARA A WEB', TO_DATE('10/01/1999','DD/MM/YYYY'), 1, 'B');
INSERT INTO LIVRO(codlivro, preco, numpags, titulo, datapublicacao, codeditora, sigla) VALUES (2, 30.55, 47, 'PROGRAMANDO EM LINGUAGEM C', TO_DATE('01/10/1997','DD/MM/YYYY'), 1, 'P');
INSERT INTO LIVRO(codlivro, preco, numpags, titulo, datapublicacao, codeditora, sigla) VALUES (3, 111.52, 103, 'PROGRAMANDO EM LINGUAGEM C++', TO_DATE('01/11/1998','DD/MM/YYYY'), 3, 'P');
INSERT INTO LIVRO(codlivro, preco, numpags, titulo, datapublicacao, codeditora, sigla) VALUES (4, 48.99, 66, 'BANCO DE DADOS NA BIOINFORMATICA','', 2, 'B');
INSERT INTO LIVRO(codlivro, preco, numpags, titulo, datapublicacao, codeditora, sigla) VALUES (5, 42.20, 93, 'REDES DE COMPUTADORES', TO_DATE('01/09/1996','DD/MM/YYYY'), 2, 'R');


--TABELA AUTOR

INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(111, 890001, TO_DATE('08/08/1978','DD/MM/YYYY'), 'Luciano Blomberg', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(112, 780002, TO_DATE('23/03/1959','DD/MM/YYYY'), 'Carlos Padilha', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(113, 920003, TO_DATE('11/12/1981','DD/MM/YYYY'), 'Ana Silveira Escobar', 'Colombiana');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(114, 810004, TO_DATE('01/11/1963','DD/MM/YYYY'), 'César Oliveira', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(115, 820005, TO_DATE('25/04/1965','DD/MM/YYYY'), 'Marcos Andrade', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(116, 890006, TO_DATE('13/08/1979','DD/MM/YYYY'), 'Carla Maldonado Silva', 'Brasileira');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(117, 780007, TO_DATE('24/05/1959','DD/MM/YYYY'), 'Carlos Tenório', 'Equatoriana');
INSERT INTO AUTOR(matricula, cpf, datanasc, nome, nacionalidade) VALUES(118, 770008, TO_DATE('29/11/1960','DD/MM/YYYY'), 'Maria Fonseca', 'Brasileira');



--TABELA LIVRO_AUTORIA

INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(1,111);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(1,112);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(1,113);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(2,114);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(3,114);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(3,115);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(4,111);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(4,116);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(5,117);
INSERT INTO LIVRO_AUTORIA(codlivro, matricula) VALUES(5,118);



--TABELA CARTÃO

INSERT INTO CARTÃO(codcartao, tipocartao) VALUES(1, 'SPECIAL');
INSERT INTO CARTÃO(codcartao, tipocartao) VALUES(2, 'PREMIUM');
INSERT INTO CARTÃO(codcartao, tipocartao) VALUES(3, 'GOLD');
INSERT INTO CARTÃO(codcartao, tipocartao) VALUES(4, 'GOLD PLUS');





--TABELA CLIENTE


INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(920003, TO_DATE('11/12/1981','DD/MM/YYYY'), 'Ana Escobar', 'Colombiana',1);          
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890006, TO_DATE('13/08/1979','DD/MM/YYYY'), 'Carla Silva', 'Brasileira',1);         
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890106, TO_DATE('15/08/1979','DD/MM/YYYY'), 'João Inácio Magalhães', 'Brasileira',2);    
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890206, TO_DATE('29/10/1977','DD/MM/YYYY'), 'César Gonçalves', 'Brasileira',2);           
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890306, TO_DATE('30/03/1976','DD/MM/YYYY'), 'Flávio Aguiar Fonseca', 'Brasileira',2);        
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890406, TO_DATE('02/07/1966','DD/MM/YYYY'), 'Henrique Meirelles', 'Brasileira',2);     
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890506, TO_DATE('01/09/1969','DD/MM/YYYY'), 'Cleide Castanheira', 'Brasileira',2);
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890606, TO_DATE('15/10/1982','DD/MM/YYYY'), 'Júlio Siqueira', 'Brasileira',2);
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890706, TO_DATE('02/09/1951','DD/MM/YYYY'), 'Elza Saldanha Prado', 'Brasileira',2);
INSERT INTO CLIENTE(cpf, datanasc, nome, nacionalidade,codcartao) VALUES(890806, TO_DATE('08/08/1971','DD/MM/YYYY'), 'Marco Antônio Rossi', 'Brasileira',2);




--TABELA LOJA

INSERT INTO LOJA(cnpj, nome) VALUES(99991, 'Tabajara 1');
INSERT INTO LOJA(cnpj, nome) VALUES(99992, 'Tabajara 2');


--TABELA VENDA

INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(1,1,31.20,TO_DATE('12/06/2008','DD/MM/YYYY'),99991,1,890406);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(1,1,48.00,TO_DATE('12/06/2008','DD/MM/YYYY'),99991,4,890406);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(2,3,126.00,TO_DATE('13/06/2008','DD/MM/YYYY'),99991,5,890406);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(3,2,334.50,TO_DATE('14/06/2009','DD/MM/YYYY'),99991,3,890506);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(3,1,42.00,TO_DATE('14/06/2009','DD/MM/YYYY'),99991,5,890506);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(4,1,31.20,TO_DATE('12/06/2008','DD/MM/YYYY'),99991,1,890306);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(4,1,42.00,TO_DATE('12/06/2008','DD/MM/YYYY'),99991,5,890306);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(4,1,111.50,TO_DATE('12/06/2008','DD/MM/YYYY'),99991,3,890306);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(5,2,62.40,TO_DATE('15/06/2009','DD/MM/YYYY'),99991,1,890506);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(5,1,48.00,TO_DATE('15/06/2009','DD/MM/YYYY'),99991,4,890506);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(6,3,334.50,TO_DATE('16/06/2009','DD/MM/YYYY'),99991,3,890206);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(7,1,111.50,TO_DATE('12/06/2008','DD/MM/YYYY'),99991,3,920003);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(7,1,48.00,TO_DATE('12/06/2008','DD/MM/YYYY'),99991,4,920003);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(7,1,42.00,TO_DATE('12/06/2008','DD/MM/YYYY'),99991,5,920003);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(8,2,84.00,TO_DATE('13/06/2008','DD/MM/YYYY'),99991,5,890206);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(9,1,31.20,TO_DATE('13/06/2008','DD/MM/YYYY'),99991,1,890206);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(9,1,48.00,TO_DATE('13/06/2008','DD/MM/YYYY'),99991,4,890206);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(10,5,156.00,TO_DATE('15/06/2009','DD/MM/YYYY'),99991,1,890606);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(11,2,96.00,TO_DATE('16/06/2009','DD/MM/YYYY'),99991,4,890606);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(11,2,84.00,TO_DATE('16/06/2009','DD/MM/YYYY'),99991,5,890606);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(12,1,42.00,TO_DATE('14/06/2009','DD/MM/YYYY'),99991,4,890706);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(13,1,30.00,TO_DATE('12/06/2008','DD/MM/YYYY'),99992,2,890606);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(13,1,111.50,TO_DATE('12/06/2008','DD/MM/YYYY'),99992,3,890606);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(14,1,31.20,TO_DATE('12/06/2008','DD/MM/YYYY'),99992,1,890806);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(15,8,'',TO_DATE('12/06/2008','DD/MM/YYYY'),99992,5,890106);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(15,5,150.00,TO_DATE('12/06/2008','DD/MM/YYYY'),99992,2,890106);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(15,4,446.00,TO_DATE('12/06/2008','DD/MM/YYYY'),99992,3,890106);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(16,1,31.20,TO_DATE('13/06/2008','DD/MM/YYYY'),99992,1,890106);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(17,1,31.20,TO_DATE('13/06/2008','DD/MM/YYYY'),99992,1,890006);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(17,1,30.00,TO_DATE('13/06/2008','DD/MM/YYYY'),99992,2,890006);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(17,1,111.50,TO_DATE('13/06/2008','DD/MM/YYYY'),99992,3,890006);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(17,1,'',TO_DATE('13/06/2008','DD/MM/YYYY'),99992,5,890006);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(18,1,30.00,TO_DATE('14/06/2009','DD/MM/YYYY'),99992,2,890506);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(19,2,60.00,TO_DATE('14/06/2009','DD/MM/YYYY'),99992,2,890806);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(19,2,84.00,TO_DATE('14/06/2009','DD/MM/YYYY'),99992,4,890806);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(20,1,111.50,TO_DATE('15/06/2009','DD/MM/YYYY'),99992,3,890706);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(21,1,30.00,TO_DATE('16/06/2009','DD/MM/YYYY'),99992,2,890706);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(21,1,'',TO_DATE('16/06/2009','DD/MM/YYYY'),99992,5,890706);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(22,2,62.40,TO_DATE('15/06/2009','DD/MM/YYYY'),99992,1,890706);
INSERT INTO VENDA(idvenda, quantidade, total, datavenda, cnpj, codlivro, cpf) VALUES(23,1,30.00,TO_DATE('16/06/2009','DD/MM/YYYY'),99992,2,890206);


--TABELA EDITORAAUX


INSERT INTO EDITORAAUX(codeditora, nome) VALUES(6, 'EDITORA MACEDO');
INSERT INTO EDITORAAUX(codeditora, nome) VALUES(7, 'EDITORA SILVA');
INSERT INTO EDITORAAUX(codeditora, nome) VALUES(8, 'GLOBO');
INSERT INTO EDITORAAUX(codeditora, nome) VALUES(9, 'EDIPUCRS');

COMMIT;



















