-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 11-05-2006 a las 13:29:04
-- Versión del servidor: 4.1.9
-- Versión de PHP: 4.3.10
-- 
-- Base de datos: `escuela`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `alumnos`
-- 

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE `alumnos` (
  `clave_alumno` mediumint(8) unsigned NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL default '',
  `edad` tinyint(3) unsigned NOT NULL default '0',
  `curso_actual` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`clave_alumno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='alumnos de la escuela' AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `alumnos`
-- 

INSERT INTO `alumnos` VALUES (1, 'Luis Perez', 10, 2);
INSERT INTO `alumnos` VALUES (2, 'Juan Lopez', 11, 3);
INSERT INTO `alumnos` VALUES (3, 'Ana Gonzalez', 10, 3);
INSERT INTO `alumnos` VALUES (4, 'Laura Sanchez', 12, 3);
INSERT INTO `alumnos` VALUES (5, 'Antonio Ruiz', 12, 3);
INSERT INTO `alumnos` VALUES (6, 'Pedro Jimenez', 10, 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `asignaturas`
-- 

DROP TABLE IF EXISTS `asignaturas`;
CREATE TABLE `asignaturas` (
  `clave_asignatura` mediumint(8) unsigned NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL default '',
  `clave_aula` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`clave_asignatura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='asignaturas de la escuela' AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `asignaturas`
-- 

INSERT INTO `asignaturas` VALUES (1, 'Historia', 1);
INSERT INTO `asignaturas` VALUES (2, 'Biología', 1);
INSERT INTO `asignaturas` VALUES (3, 'Matemáticas', 4);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `aulas`
-- 

DROP TABLE IF EXISTS `aulas`;
CREATE TABLE `aulas` (
  `clave_aula` mediumint(8) unsigned NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`clave_aula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `aulas`
-- 

INSERT INTO `aulas` VALUES (1, '1A');
INSERT INTO `aulas` VALUES (2, '1B');
INSERT INTO `aulas` VALUES (3, '2A');
INSERT INTO `aulas` VALUES (4, '2B');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `horarios`
-- 

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE `horarios` (
  `clave_horario` mediumint(8) unsigned NOT NULL auto_increment,
  `hora_inicio` time NOT NULL default '00:00:00',
  `hora_fin` time NOT NULL default '00:00:00',
  `dia` enum('lunes','martes','miercoles','jueves','viernes') NOT NULL default 'lunes',
  `clave_asignatura` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`clave_horario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `horarios`
-- 

INSERT INTO `horarios` VALUES (1, '08:00:00', '10:00:00', 'lunes', 1);
INSERT INTO `horarios` VALUES (2, '10:00:00', '12:00:00', 'lunes', 2);
INSERT INTO `horarios` VALUES (3, '12:00:00', '14:00:00', 'lunes', 3);
INSERT INTO `horarios` VALUES (4, '08:00:00', '12:00:00', 'martes', 1);
INSERT INTO `horarios` VALUES (5, '12:00:00', '14:00:00', 'martes', 2);
INSERT INTO `horarios` VALUES (6, '10:00:00', '12:00:00', 'miercoles', 3);
INSERT INTO `horarios` VALUES (7, '12:00:00', '14:00:00', 'miercoles', 1);
INSERT INTO `horarios` VALUES (8, '08:00:00', '10:00:00', 'jueves', 2);
INSERT INTO `horarios` VALUES (9, '10:00:00', '12:00:00', 'jueves', 3);
INSERT INTO `horarios` VALUES (10, '12:00:00', '14:00:00', 'jueves', 1);
INSERT INTO `horarios` VALUES (11, '08:00:00', '12:00:00', 'viernes', 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `listas`
-- 

DROP TABLE IF EXISTS `listas`;
CREATE TABLE `listas` (
  `clave_lista` mediumint(8) unsigned NOT NULL auto_increment,
  `clave_profesor` mediumint(8) unsigned NOT NULL default '0',
  `clave_alumno` mediumint(8) unsigned NOT NULL default '0',
  `clave_asignatura` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`clave_lista`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='listas que relacionan a alumnos, profesores y asignaturas' AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `listas`
-- 

INSERT INTO `listas` VALUES (1, 1, 1, 1);
INSERT INTO `listas` VALUES (2, 1, 2, 1);
INSERT INTO `listas` VALUES (3, 1, 3, 1);
INSERT INTO `listas` VALUES (4, 1, 1, 2);
INSERT INTO `listas` VALUES (5, 1, 2, 2);
INSERT INTO `listas` VALUES (6, 1, 3, 2);
INSERT INTO `listas` VALUES (7, 2, 4, 3);
INSERT INTO `listas` VALUES (8, 2, 5, 3);
INSERT INTO `listas` VALUES (9, 2, 6, 3);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `profesores`
-- 

DROP TABLE IF EXISTS `profesores`;
CREATE TABLE `profesores` (
  `clave_profesor` mediumint(8) unsigned NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`clave_profesor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='profesores de la escuela' AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `profesores`
-- 

INSERT INTO `profesores` VALUES (1, 'Roberto Juarez');
INSERT INTO `profesores` VALUES (2, 'Marcela Herrera');
