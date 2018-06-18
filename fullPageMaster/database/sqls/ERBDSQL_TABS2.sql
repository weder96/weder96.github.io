-- Laboratorio de Banco de Dados - prof. Duncan
-- aula pratica de sql interativa
-- 
-- O objetivo desta aula pratica eh trabalhar com as diversas possibilidades de
-- consultas e atualizacoes em SQL
--
-- Para tanto, sera utilizado o banco de dados Acadêmico (alunos, disciplinas, historico)
--
-- Este arquivo contem a criacao das tabelas e a insercao de registros em numero
-- suficiente para as diversas questoes da aula pratica.
--
-- No arquivo estao indicados os pontos onde devem ser feitas as quebras no
-- copy/paste do Notepad (Bloco de Notas) para o sqlplus
--

-- tabela disciplinas
Create table disciplinas(
Disciplina char(8),
Denominacao char(50) not null,
Nivel numeric(2),
MediaNotas numeric(3,1),
Primary key(Disciplina));

-- tabela alunos
Create table alunos(
Matricula numeric(8),
Nome char(25) not null,
Sexo char(1) not null,
Idade numeric(2) not null,
Curso char(5) not null,
CoefRend numeric(3,1),
Primary key(matricula));

-- tabela professores
Create table professores(
Disciplina char(8),
Turma char(3),
Ano_sem char(6),
Professor varchar(50) not null,
Media numeric(3,1),
Primary key(Disciplina,Turma,Ano_sem));

-- tabela historico
Create table historico(
Matricula numeric(8),
Disciplina char(8),
Turma char(3) not null,
Ano_sem char(6) not null,
Nota numeric(3,1) not null,
Primary key(matricula,disciplina,ano_sem));

-- ---------------------corte -----------------------

-- carga de dados em disciplinas e alunos
Insert into disciplinas values('46250-02','Sistemas de Informacao',3,null);
Insert into disciplinas values('46251-04','Engenharia de Software I',4,null);
Insert into disciplinas values('46252-04','Engenharia de Software II',6,null);
Insert into disciplinas values('46256-04','Banco de Dados I',4,null);
Insert into disciplinas values('46257-04','Banco de Dados II',6,null);
Insert into disciplinas values('46258-04','Modelagem Conceitual de Sistemas',5,null);
Insert into disciplinas values('46266-04','Topicos Especiais em Bancos de Dados',7,null);
Insert into disciplinas values('46267-04','Topicos Especiais em Engenharia de Software I',7,null);
Insert into disciplinas values('46268-04','Topicos Especiais em Engenharia de Software II',8,null);
Insert into disciplinas values('46285-04','Engenharia de Software I',4,null);
Insert into disciplinas values('46286-04','Banco de Dados I',4,null);
Insert into alunos values(93106842,'Jovana da Silva','F',26,'2/520',null);
Insert into alunos values(94103839,'Eduardo da Silva','M',22,'4/601',null);
Insert into alunos values(94108293,'Marcelo da Silva','M',22,'4/601',null);
Insert into alunos values(94112046,'Tiago da Silva','M',22,'4/601',null);
Insert into alunos values(94112192,'Vanessa da Silva','F',23,'4/601',null);
Insert into alunos values(94201018,'Carla da Silva','F',21,'4/601',null);
Insert into alunos values(94206067,'Rogerio da Silva','M',22,'4/601',null);
Insert into alunos values(95280018,'Solange da Silva','F',26,'4/601',null);
Insert into alunos values(95280023,'Marcelo da Silva','M',23,'4/601',null);
Insert into alunos values(95280027,'Katia da Silva','F',20,'4/601',null);
Insert into alunos values(96104543,'Marcos da Silva','M',26,'2/520',null);

-- ---------------------corte -----------------------

Insert into professores values('46250-02','128','1997/2','Ana Paula',null);
Insert into professores values('46250-02','128','1998/1','Ana Paula',null);
Insert into professores values('46250-02','128','1998/2','Ana Paula',null);
Insert into professores values('46250-02','128','1999/1','Ana Paula',null);
Insert into professores values('46250-02','128','1999/2','Ana Paula',null);
Insert into professores values('46250-02','128','2000/1','Ana Paula',null);
Insert into professores values('46250-02','138','1999/1','Ana Paula',null);
Insert into professores values('46250-02','138','2000/1','Ana Paula',null);
Insert into professores values('46251-04','128','1998/1','Yamaguti',null);
Insert into professores values('46251-04','128','1998/2','Yamaguti',null);
Insert into professores values('46251-04','128','1999/2','Bastos',null);
Insert into professores values('46251-04','128','2000/1','Bastos',null);
Insert into professores values('46251-04','138','1998/1','Afonso',null);
Insert into professores values('46251-04','138','1999/2','Yamaguti',null);
Insert into professores values('46251-04','138','2000/1','Yamaguti',null);
Insert into professores values('46252-04','128','1999/1','Afonso',null);
Insert into professores values('46252-04','128','1999/2','Afonso',null);
Insert into professores values('46252-04','128','2000/1','Afonso',null);
Insert into professores values('46256-04','128','1998/1','Karin',null);
Insert into professores values('46256-04','128','1998/2','Karin',null);
Insert into professores values('46256-04','128','1999/1','Karin',null);
Insert into professores values('46256-04','128','1999/2','Karin',null);
Insert into professores values('46256-04','128','2000/1','Karin',null);
Insert into professores values('46256-04','138','1999/1','Duncan',null);
Insert into professores values('46256-04','138','1999/2','Duncan',null);
Insert into professores values('46256-04','138','2000/1','Duncan',null);
Insert into professores values('46257-04','128','1999/1','Arruda',null);
Insert into professores values('46257-04','128','1999/2','Arruda',null);
Insert into professores values('46257-04','128','2000/1','Arruda',null);
Insert into professores values('46258-04','128','1998/2','Hubert',null);
Insert into professores values('46258-04','128','1999/1','Hubert',null);
Insert into professores values('46258-04','128','2000/1','Hubert',null);
Insert into professores values('46266-04','128','1999/2','Egidio',null);
Insert into professores values('46266-04','128','2000/1','Arruda',null);
Insert into professores values('46267-04','128','1999/2','Arruda',null);

-- ---------------------corte -----------------------

-- carga de dados em historico
Insert into historico values(94108293,'46250-02','128','1997/2',6);
Insert into historico values(94112046,'46250-02','128','1997/2',6);
Insert into historico values(94112192,'46250-02','128','1997/2',8);
Insert into historico values(94103839,'46250-02','128','1998/1',9);
Insert into historico values(95280023,'46250-02','128','1998/1',9);
Insert into historico values(93106842,'46250-02','128','1998/2',8);
Insert into historico values(94206067,'46250-02','128','1998/2',9);
Insert into historico values(94201018,'46250-02','128','1999/1',8);
Insert into historico values(95280018,'46250-02','138','1999/1',9);
Insert into historico values(95280027,'46250-02','128','1999/1',4);
Insert into historico values(95280027,'46250-02','128','1999/2',7);
Insert into historico values(94108293,'46251-04','138','1998/1',6);
Insert into historico values(94112046,'46251-04','128','1998/1',5);
Insert into historico values(94112192,'46251-04','128','1998/1',7);
Insert into historico values(94103839,'46251-04','128','1998/2',6);
Insert into historico values(94201018,'46251-04','128','1999/2',8);
Insert into historico values(94206067,'46251-04','138','1999/2',8);
Insert into historico values(94108293,'46252-04','128','1999/1',9);
Insert into historico values(94112046,'46252-04','128','1999/2',9);
Insert into historico values(94112192,'46252-04','128','1999/2',8);
Insert into historico values(94108293,'46256-04','128','1998/1',8);
Insert into historico values(94112046,'46256-04','128','1998/1',8);
Insert into historico values(94112192,'46256-04','128','1998/1',3);
Insert into historico values(94103839,'46256-04','128','1998/2',5);
Insert into historico values(94112192,'46256-04','128','1998/2',7);
Insert into historico values(93106842,'46256-04','138','1999/1',7);
Insert into historico values(94206067,'46256-04','138','1999/1',9);
Insert into historico values(95280023,'46256-04','128','1999/1',7);
Insert into historico values(94201018,'46256-04','138','1999/2',8);
Insert into historico values(95280018,'46256-04','128','1999/2',8);
Insert into historico values(94108293,'46257-04','128','1999/1',7);
Insert into historico values(94112046,'46257-04','128','1999/1',9);
Insert into historico values(94112192,'46257-04','128','1999/2',6);
Insert into historico values(94108293,'46258-04','128','1998/2',8);
Insert into historico values(94112046,'46258-04','128','1998/2',7);
Insert into historico values(94103839,'46258-04','128','1999/1',7);
Insert into historico values(94112192,'46258-04','128','1999/1',5);
Insert into historico values(94108293,'46266-04','128','1999/2',7);
Insert into historico values(94112046,'46266-04','128','1999/2',6);
Insert into historico values(94108293,'46267-04','128','1999/2',8);


