-- --------------------------------------------------------
-- 
-- Estructura de tabla para la tabla tb_alunos
-- 

DROP TABLE IF EXISTS tb_alunos;
CREATE TABLE tb_alunos (
  id serial,
  nome varchar(255) NOT NULL default '',
  edad int NOT NULL default 0,
  curso_actual int NOT NULL default 0,
  PRIMARY KEY  (id)
);


INSERT INTO tb_alunos VALUES (1, 'Luis Perez', 10, 2);
INSERT INTO tb_alunos VALUES (2, 'Juan Lopez', 11, 3);
INSERT INTO tb_alunos VALUES (3, 'Ana Gonzalez', 10, 3);
INSERT INTO tb_alunos VALUES (4, 'Laura Sanchez', 12, 3);
INSERT INTO tb_alunos VALUES (5, 'Antonio Ruiz', 12, 3);
INSERT INTO tb_alunos VALUES (6, 'Pedro Jimenez', 10, 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla asignaturas
-- 

DROP TABLE IF EXISTS assinaturas;
CREATE TABLE assinaturas (
  id serial,
  nome varchar(255) NOT NULL default '',
  aula_id integer NOT NULL default 0,
  PRIMARY KEY  (id)
);

INSERT INTO assinaturas VALUES (1, 'Historia', 1);
INSERT INTO assinaturas VALUES (2, 'Biología', 1);
INSERT INTO assinaturas VALUES (3, 'Matemáticas', 4);

-- --------------------------------------------------------


DROP TABLE IF EXISTS aulas;
CREATE TABLE aulas (
  id serial,
  nome varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
);

INSERT INTO aulas VALUES (1, '1A');
INSERT INTO aulas VALUES (2, '1B');
INSERT INTO aulas VALUES (3, '2A');
INSERT INTO aulas VALUES (4, '2B');

-- --------------------------------------------------------

DROP TABLE IF EXISTS horarios;
CREATE TABLE horarios (
  id serial,
  hora_inicio time NOT NULL default '00:00:00',
  hora_fim time NOT NULL default '00:00:00',
  dia  varchar(100) NOT NULL default 'segunda',
  assinatura_id int NOT NULL default 0,
  PRIMARY KEY  (id)
);

-- 
-- Volcar la base de datos para la tabla horarios
-- 

INSERT INTO horarios VALUES (1, '08:00:00', '10:00:00', 'segunda', 1);
INSERT INTO horarios VALUES (2, '10:00:00', '12:00:00', 'segunda', 2);
INSERT INTO horarios VALUES (3, '12:00:00', '14:00:00', 'segunda', 3);
INSERT INTO horarios VALUES (4, '08:00:00', '12:00:00', 'terca', 1);
INSERT INTO horarios VALUES (5, '12:00:00', '14:00:00', 'terca', 2);
INSERT INTO horarios VALUES (6, '10:00:00', '12:00:00', 'quarta', 3);
INSERT INTO horarios VALUES (7, '12:00:00', '14:00:00', 'quarta', 1);
INSERT INTO horarios VALUES (8, '08:00:00', '10:00:00', 'quinta', 2);
INSERT INTO horarios VALUES (9, '10:00:00', '12:00:00', 'quinta', 3);
INSERT INTO horarios VALUES (10, '12:00:00', '14:00:00', 'quinta', 1);
INSERT INTO horarios VALUES (11, '08:00:00', '12:00:00', 'sexta', 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla listas
-- 

DROP TABLE IF EXISTS listas;
CREATE TABLE listas (
  id serial,
  professor_id integer NOT NULL default 0,
  aluno_id integer  NOT NULL default 0,
  assinatura_id  integer  NOT NULL default 0,
  PRIMARY KEY  (id)
);

-- 
-- Volcar la base de datos para la tabla listas
-- 

INSERT INTO listas VALUES (1, 1, 1, 1);
INSERT INTO listas VALUES (2, 1, 2, 1);
INSERT INTO listas VALUES (3, 1, 3, 1);
INSERT INTO listas VALUES (4, 1, 1, 2);
INSERT INTO listas VALUES (5, 1, 2, 2);
INSERT INTO listas VALUES (6, 1, 3, 2);
INSERT INTO listas VALUES (7, 2, 4, 3);
INSERT INTO listas VALUES (8, 2, 5, 3);
INSERT INTO listas VALUES (9, 2, 6, 3);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla profesores
-- 

DROP TABLE IF EXISTS professores;
CREATE TABLE professores (
  id serial,
  nome varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
);

-- 
-- Volcar la base de datos para la tabla profesores
-- 

INSERT INTO professores VALUES (1, 'Roberto Juarez');
INSERT INTO professores VALUES (2, 'Marcela Herrera');
