- 
-- 
-- Banco de Dados Academico, para exercícios em aula
-- 

create table alunospP (
     id numeric(8) not null,
     Nome char(25) not null,
     Sexo char(1) not null,
     Idade numeric(2) not null,
     Curso char(5) not null,
     primary key (id)
    );

create table DISCIPLINAS (
     disciplina char(8) not null,
     denominacao char(50) not null,
     nivel numeric(2),
     primary key (disciplina)
    );


create table professoresp(disciplina,turma,ano_sem,professor)p (
	 id serial,
     disciplina char(8) not null,
     turma char(3) not null,
     ano_sem char(6) not null,
     professor varchar(50) not null,
     primary key (id)
    );     

create table HISTORICO (
     Matricula numeric(8) not null,
     Disciplina char(8) not null,
     Turma char(3) not null,
     Ano_Sem char(6) not null,
     Nota numeric(3,1)
    );

-- ---------------------corte -----------------------

--prompt carga de dados em disciplinas e alunosp
Insert into disciplinas values('46250-02','Sistemas de Informacao',3);
Insert into disciplinas values('46251-04','Engenharia de Software I',4);
Insert into disciplinas values('46252-04','Engenharia de Software II',6);
Insert into disciplinas values('46256-04','Banco de Dados I',4);
Insert into disciplinas values('46257-04','Banco de Dados II',6);
Insert into disciplinas values('46258-04','Modelagem Conceitual de Sistemas',5);
Insert into disciplinas values('46266-04','Topicos Especiais em Bancos de Dados',7);
Insert into disciplinas values('46268-04','Topicos Especiais em Engenharia de Software II',8);
Insert into disciplinas values('46285-04','Engenharia de Software I',4);
Insert into disciplinas values('46286-04','Banco de Dados I',4);

Insert into alunosp values(93106842,'Jovana da Silva','F',26,'2/520');
Insert into alunosp values(94103839,'Eduardo da Silva','M',22,'4/601');
Insert into alunosp values(94108293,'Marcelo da Silva','M',22,'4/601');
Insert into alunosp values(94112046,'Tiago da Silva','M',22,'4/601');
Insert into alunosp values(94112192,'Vanessa da Silva','F',23,'4/601');
Insert into alunosp values(94201018,'Carla da Silva','F',21,'4/601');
Insert into alunosp values(94206067,'Rogerio da Silva','M',22,'4/601');
Insert into alunosp values(95280018,'Solange da Silva','F',26,'4/601');
Insert into alunosp values(95280023,'Marcelo da Silva','M',23,'4/601');
Insert into alunosp values(95280027,'Katia da Silva','F',20,'4/601');
Insert into alunosp values(96104543,'Marcos da Silva','M',26,'2/520');
commit;

-- ---------------------corte -----------------------

Insert into professoresp(disciplina,turma,ano_sem,professor) values('46250-02','128','1997/2','Ana Paula');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46250-02','128','1998/1','Ana Paula');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46250-02','128','1998/2','Ana Paula');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46250-02','128','1999/1','Ana Paula');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46250-02','128','1999/2','Ana Paula');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46250-02','128','2000/1','Ana Paula');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46250-02','138','1999/1','Ana Paula');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46250-02','138','2000/1','Ana Paula');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46251-04','128','1998/1','Yamaguti');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46251-04','128','1998/2','Yamaguti');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46251-04','128','1999/2','Bastos');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46251-04','128','2000/1','Bastos');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46251-04','138','1998/1','Afonso');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46251-04','138','1999/2','Yamaguti');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46251-04','138','2000/1','Yamaguti');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46252-04','128','1999/1','Afonso');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46252-04','128','1999/2','Afonso');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46252-04','128','2000/1','Afonso');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46256-04','128','1998/1','Karin');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46256-04','128','1998/2','Karin');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46286-04','128','1999/1','Karin');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46286-04','128','1999/2','Karin');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46286-04','128','2000/1','Karin');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46256-04','138','1999/1','Duncan');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46256-04','138','1999/2','Duncan');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46256-04','138','2000/1','Duncan');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46257-04','128','1999/1','Arruda');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46257-04','128','1999/2','Arruda');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46257-04','128','2000/1','Arruda');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46258-04','128','1998/2','Hubert');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46258-04','128','1999/1','Hubert');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46258-04','128','2000/1','Hubert');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46266-04','128','1999/2','Egidio');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46266-04','128','2000/1','Arruda');
Insert into professoresp(disciplina,turma,ano_sem,professor) values('46267-04','128','1999/2','Arruda');
commit;

-- ---------------------corte -----------------------

--prompt carga de dados em historico
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
Insert into historico values(95280023,'46286-04','128','1999/1',7);
Insert into historico values(94201018,'46256-04','138','1999/2',8);
Insert into historico values(95280018,'46286-04','128','1999/2',8);
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
commit;

