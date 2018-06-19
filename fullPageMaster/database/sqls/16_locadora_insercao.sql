--script para insercao noo banco de dados locadora

INSERT INTO CLIENTE VALUES (1, 'João José da Silva', 'Rua das Dores, 1687, Ipiranga', '(91) 3524-4651', '(91) 9254-4651');
INSERT INTO CLIENTE VALUES (2, 'Maria Joaquina Magalhães', 'Av. Litorânia, 5484, Praia do Morro', '(28) 3842-9741', '(28) 9954-9741');
INSERT INTO CLIENTE VALUES (3, 'Abelita Valéria Fernandes', 'Av. Marechal Deodoro da Fonseca, 842, Santa Maria', '(21) 2164-8974', '(21) 9988-8974');
INSERT INTO CLIENTE VALUES (4, 'Belarmino Jhones', 'Rua Joaquim Aníbal, 21, Centro', '(31) 3249-1245', '(31) 8821-1245');
INSERT INTO CLIENTE VALUES (5, 'Bosco Calcido das Cruzes', 'Rua da Curva, 10, Pelorinho', '(71) 3984-5566', '(71) 9287-5566');
INSERT INTO CLIENTE VALUES (6, 'Delfim Vieira Neto', 'Av. Dr. Roberto Luzitano, 5543, Ala Oeste', '(55) 3218-7138', '(55) 8671-7138');
INSERT INTO CLIENTE VALUES (7, 'Gabriela Bochelli Soviersovisk', 'Av. Atlântica, 1111, Orla', '(98) 3285-4712', '(98) 8137-4712');

INSERT INTO CLASSIFICACAO VALUES (1,'Super-lançamento',15.00);
INSERT INTO CLASSIFICACAO VALUES (2,'Lançamento',10.00);
INSERT INTO CLASSIFICACAO VALUES (3,'Acervo',5.00);

INSERT INTO FILME VALUES (1, 'The Godfather', 'O Poderoso Chefão', 175, '24/03/1972', 'Francis Ford Coppola', 'Crime/Drama', 3);
INSERT INTO FILME VALUES (2, 'Over Flew Over The Cuckoos Nest', 'Um Estranho no Ninho', 133, '21/11/1975', 'Millos Forman', 'Drama', 3);
INSERT INTO FILME VALUES (3, 'The Avengers', 'Os Vingadores', 143, '26/04/2012', 'Joss Whedon', 'Ação', 2);
INSERT INTO FILME VALUES (4, 'A Clockwork Orange', 'Laranja Mecânica', 136, '13/01/1972', 'Stanley Kubrick', 'Crime/Drama/Ficção Científica', 3);
INSERT INTO FILME VALUES (5, 'Inception', 'A Origem', 148, '16/07/2010', 'Christopher Nolan', 'Ação/Aventura/Mistério', 2);
INSERT INTO FILME VALUES (6, 'Pulp Fiction', 'Pulp Fiction: Tempo de Violência', 154, '21/10/1994', 'Quentin Tarantino', 'Crime/Drama/Thriller', 3);
INSERT INTO FILME VALUES (7, 'The Hangover Part III', 'Se Beber, Não Case! Parte: 3', 100, '24/05/2013', 'Tood Phillips', 'Comédia', 1);
INSERT INTO FILME VALUES (8, 'The Silence of the Lambs', 'O Silêncio dos Inocentes', 118, '31/05/1991', 'Jonathan Demme', 'Crime/Drama/Thriller', 1);
INSERT INTO FILME VALUES (9, 'Memento', 'Amnésia', 113, '20/10/2000', 'Christopher Nolan', 'Mistério/Thriller', 3);
INSERT INTO FILME VALUES (10, 'Les Misérables', 'Os Miseráveis', 158, '11/01/2013', 'Tom Hooper', 'Drama/Musical/Romance', 1);
INSERT INTO FILME VALUES (11, 'The Pianist', 'O Pianista', 150, '24/01/2003', 'Roman Polanski', 'Biografia/Drama/História', 3);
INSERT INTO FILME VALUES (12, 'Citizen Kane', 'Cidadão Kane', 119, '24/01/1942', 'Orson Welles', 'Drama/Mistério', 3); 
INSERT INTO FILME VALUES (13, 'The Shining', 'O Iluminado', 146, '25/12/1980', 'Stanley Kubrick', 'Terror/Mistério', 3);
INSERT INTO FILME VALUES (14, 'World War Z', 'Guerra Mundial Z', 116, '21/06/2013', 'Marc Forster', 'Ação/Drama/Terror', 1);
INSERT INTO FILME VALUES (15, 'Django Unchained', 'Django Livre', 165, '18/01/2013', 'Quentin Tarantino', 'Aventura/Velho-Oeste', 1);

-- Super-lançamentos
INSERT INTO MIDIA VALUES (7,1,'Blu-ray');
INSERT INTO MIDIA VALUES (7,2,'DVD');
INSERT INTO MIDIA VALUES (10,1,'Blu-ray');
INSERT INTO MIDIA VALUES (14,1,'Blu-ray');
INSERT INTO MIDIA VALUES (14,2,'DVD');
INSERT INTO MIDIA VALUES (14,3,'VHS');
INSERT INTO MIDIA VALUES (15,1,'Blu-ray');

-- Lançamentos
INSERT INTO MIDIA VALUES (3,1,'Blu-ray');
INSERT INTO MIDIA VALUES (3,2,'DVD');
INSERT INTO MIDIA VALUES (3,3,'VHS');
INSERT INTO MIDIA VALUES (5,1,'Blu-ray');
INSERT INTO MIDIA VALUES (5,2,'DVD');

-- Acervo
INSERT INTO MIDIA VALUES (1,1,'DVD');
INSERT INTO MIDIA VALUES (1,2,'DVD');
INSERT INTO MIDIA VALUES (1,3,'VHS');
INSERT INTO MIDIA VALUES (2,1,'VHS');
INSERT INTO MIDIA VALUES (2,2,'VHS');
INSERT INTO MIDIA VALUES (4,1,'VHS');
INSERT INTO MIDIA VALUES (6,1,'DVD');
INSERT INTO MIDIA VALUES (8,1,'VHS');
INSERT INTO MIDIA VALUES (9,1,'DVD');
INSERT INTO MIDIA VALUES (11,1,'DVD');
INSERT INTO MIDIA VALUES (12,1,'VHS');
INSERT INTO MIDIA VALUES (13,1,'DVD');

INSERT INTO EMPRESTIMO VALUES (1,3,'VHS',1,'15/08/1978', '27/06/2013', 63675.00);
INSERT INTO EMPRESTIMO VALUES (2,1,'VHS',2,'12/01/2013', '14/01/2013', 5.00);
INSERT INTO EMPRESTIMO VALUES (3,1,'Blu-ray',3,'29/04/2012', '30/04/2012', 10.00);
INSERT INTO EMPRESTIMO VALUES (4,1,'VHS',4,'01/01/2013', '03/01/2013', 5.00);
INSERT INTO EMPRESTIMO VALUES (5,1,'Blu-ray',5,'30/09/2012', '01/10/2012', 10.00);
INSERT INTO EMPRESTIMO VALUES (6,1,'DVD',6,'04/05/2013', '06/05/2013', 5.00);
INSERT INTO EMPRESTIMO VALUES (7,1,'Blu-ray',7,'27/05/2013', '28/05/2013', 15.00);
INSERT INTO EMPRESTIMO VALUES (8,1,'VHS',1,'16/03/2013', '17/03/2013', 15.00);
INSERT INTO EMPRESTIMO VALUES (9,1,'DVD',2,'24/03/2013', '25/03/2013', 5.00);
INSERT INTO EMPRESTIMO VALUES (10,1,'Blu-ray',3,'22/06/2013', '23/06/2013', 15.00);
INSERT INTO EMPRESTIMO VALUES (11,1,'DVD',4,'12/01/2013', '14/01/2013', 5.00);
INSERT INTO EMPRESTIMO VALUES (12,1,'VHS',5,'12/02/2013', '14/02/2013', 5.00);
INSERT INTO EMPRESTIMO VALUES (13,1,'DVD',6,'12/10/2012', '15/10/2012', 5.00);
INSERT INTO EMPRESTIMO VALUES (14,1,'Blu-ray',7,'23/06/2013', '27/06/2013', 30.00);
INSERT INTO EMPRESTIMO VALUES (15,1,'Blu-ray',1,'15/02/2013', '19/02/2013', 45.00);
INSERT INTO EMPRESTIMO VALUES (1,1,'DVD',2,'02/05/2013', '05/05/2013', 5.00);
INSERT INTO EMPRESTIMO VALUES (2,2,'VHS',3,'09/04/2013', '12/04/2013', 10.00);
INSERT INTO EMPRESTIMO VALUES (3,1,'Blu-ray',4,'19/02/2013', '20/02/2013', 10.00);
INSERT INTO EMPRESTIMO VALUES (4,1,'VHS',5,'07/06/2013', '08/06/2013', 5.00);
INSERT INTO EMPRESTIMO VALUES (5,1,'Blu-ray',6,'14/06/2013', '27/06/2013', 65.00);

INSERT INTO ATOR VALUES (1, '03/04/1923', 'USA', 'Marlon Brando Jr.', 'Marlon Brando');
INSERT INTO ATOR VALUES (2, '25/04/1940', 'USA', 'Alfredo James Pacino', 'Al Pacino');
INSERT INTO ATOR VALUES (3, '26/03/1940', 'USA', 'James Edmund Caan', 'James Caan');
INSERT INTO ATOR VALUES (4, '22/04/1937', 'USA', 'John Joseph Nicholson', 'Jack Nicholson');
INSERT INTO ATOR VALUES (5, '17/11/1944', 'USA', 'Daniel Michae DeVito Jr.', 'Danny DeVito');
INSERT INTO ATOR VALUES (6, '22/10/1938', 'USA', 'Christopher Allen Lloyd', 'Christopher Lloyd');
INSERT INTO ATOR VALUES (7, '04/04/1965', 'USA', 'Robert John Downey Jr.', 'Robert Downey Jr.'); 
INSERT INTO ATOR VALUES (8, '22/12/1967', 'USA', 'Mark Alan Ruffalo', 'Mark Ruffalo');
INSERT INTO ATOR VALUES (9, '22/11/1984', 'USA', 'Scarlett Ingrid Johansson', 'Scarlett Johansson');
INSERT INTO ATOR VALUES (10, '13/06/1943', 'UK', 'Malcolm John Taylor', 'Malcolm McDowell');
INSERT INTO ATOR VALUES (11, '26/04/1947', 'UK', 'Alan Clarke', 'Warren Clarke');
INSERT INTO ATOR VALUES (12, '13/11/1930', 'UK', 'Adrienne Riccoboni', 'Adrienne Corri');
INSERT INTO ATOR VALUES (13, '11/11/1974', 'USA', 'Leonardo Wilhelm DiCaprio', 'Leonardo DiCaprio');
INSERT INTO ATOR VALUES (14, '17/02/1981', 'USA', 'Joseph Leonard Gordon-Levitt', 'Joseph Gordon-Levitt');
INSERT INTO ATOR VALUES (15, '21/02/1987', 'Canadá', 'Ellen Philpotts-Page', 'Ellen Page');
INSERT INTO ATOR VALUES (16, '18/02/1954', 'USA', 'John Joseph Travolta', 'John Travolta');
INSERT INTO ATOR VALUES (17, '21/12/1948', 'USA', 'Samuel Leroy Jackson', 'Samuel L. Jackson');
INSERT INTO ATOR VALUES (18, '19/03/1955', 'Alemanha Ocidental', 'Walter Bruce Willis', 'Bruce Willis');
INSERT INTO ATOR VALUES (19, '05/01/1975', 'USA', 'Bradley Charles Cooper', 'Bradley Cooper');
INSERT INTO ATOR VALUES (20, '24/01/1974', 'USA', 'Edward Paul Helms', 'Ed Helms');
INSERT INTO ATOR VALUES (21, '01/10/1969', 'USA', 'Zacharius Knight Galifianakis', 'Zach Galifianakis');
INSERT INTO ATOR VALUES (22, '31/12/1937', 'UK', 'Philip Anthony Hopkins', 'Anthony Hopkins');
INSERT INTO ATOR VALUES (23, '19/11/1962', 'USA', 'Alicia Christian Foster', 'Jodie Foster');
INSERT INTO ATOR VALUES (24, '25/08/1944', 'USA', 'Philip Anthony Mair Heald', 'Anthony Heald');
INSERT INTO ATOR VALUES (25, '05/10/1967', 'UK', 'Guy Edward Peace', 'Guy Pearce');
INSERT INTO ATOR VALUES (26, '21/08/1967', 'Canadá', 'Carrie-Anne Moss', 'Carrie-Anne Moss');
INSERT INTO ATOR VALUES (27, '12/09/1951', 'USA', 'Joseph Peter Pantoliano', 'Joe Pantoliano');
INSERT INTO ATOR VALUES (28, '12/10/1968', 'Austrália', 'Hugh Michael Jackman', 'Hugh Jackman');
INSERT INTO ATOR VALUES (29, '07/04/1964', 'Nova Zelândia', 'Russel Ira Crowe', 'Russel Crowe');
INSERT INTO ATOR VALUES (30, '03/12/1985', 'USA', 'Amanda Michelle Seyfried', 'Amanda Seyfried');
INSERT INTO ATOR VALUES (31, '14/04/1973', 'USA', 'Adrien Brody', 'Adrien Brody');
INSERT INTO ATOR VALUES (32, '31/07/1964', 'UK', 'Emilia Lydia Rose Fox', 'Emilia Fox');
INSERT INTO ATOR VALUES (33, '06/08/1926', 'UK', 'Francis Finlay', 'Frank Finlay');
INSERT INTO ATOR VALUES (34, '15/05/1905', 'USA', 'Joseph Cheshire Cotten', 'Joseph Cotten');
INSERT INTO ATOR VALUES (35, '24/08/1913', 'USA', 'Margaret Louise Comingore', 'Dorothy Comingore');
INSERT INTO ATOR VALUES (36, '06/12/1900', 'USA', 'Agnes Robertson Moorehead', 'Agnes Moorehead');
INSERT INTO ATOR VALUES (37,'07/07/1949', 'USA', 'Shelley Alexis Duvall', 'Shelley Duvall');
INSERT INTO ATOR VALUES (38, '23/05/1910', 'USA', 'Bejamin Sherman Crothers', 'Scatman Crothers');
INSERT INTO ATOR VALUES (39, '18/12/1963', 'USA', 'William Bradley Pitt', 'Brad Pitt');
INSERT INTO ATOR VALUES (40, '22/09/1975', 'USA', 'Mireille Enos', 'Mireille Enos');
INSERT INTO ATOR VALUES (41, '14/07/1966', 'USA', 'Matthew Chandler Fox', 'Matthew Fox');
INSERT INTO ATOR VALUES (42, '13/12/1967', 'USA', 'Eric Marlon Bishop', 'Jamie Foxx');
INSERT INTO ATOR VALUES (43, '04/10/1956', 'Áustria', 'Christoph Waltz', 'Christoph Waltz');

-- The Godfather
INSERT INTO ESTRELA VALUES (1,1);
INSERT INTO ESTRELA VALUES (1,2);
INSERT INTO ESTRELA VALUES (1,3);

-- Over Flew Over The Cuckoos Nest
INSERT INTO ESTRELA VALUES (2,4);
INSERT INTO ESTRELA VALUES (2,5);
INSERT INTO ESTRELA VALUES (2,6);

-- The Avengers
INSERT INTO ESTRELA VALUES (3,7);
INSERT INTO ESTRELA VALUES (3,8);
INSERT INTO ESTRELA VALUES (3,9);

-- A Clockwork Orange
INSERT INTO ESTRELA VALUES (4,10);
INSERT INTO ESTRELA VALUES (4,11);
INSERT INTO ESTRELA VALUES (4,12);

-- Inception
INSERT INTO ESTRELA VALUES (5,13);
INSERT INTO ESTRELA VALUES (5,14);
INSERT INTO ESTRELA VALUES (5,15);

-- Pulp Fiction
INSERT INTO ESTRELA VALUES (6,16);
INSERT INTO ESTRELA VALUES (6,17);
INSERT INTO ESTRELA VALUES (6,18);

-- The Hangover Part III
INSERT INTO ESTRELA VALUES (7,19);
INSERT INTO ESTRELA VALUES (7,20);
INSERT INTO ESTRELA VALUES (7,21);

-- The Silence of the Lambs
INSERT INTO ESTRELA VALUES (8,22);
INSERT INTO ESTRELA VALUES (8,23);
INSERT INTO ESTRELA VALUES (8,24);

-- Memento
INSERT INTO ESTRELA VALUES (9,25);
INSERT INTO ESTRELA VALUES (9,26);
INSERT INTO ESTRELA VALUES (9,27);

-- Les Misérables
INSERT INTO ESTRELA VALUES (10,28);
INSERT INTO ESTRELA VALUES (10,29);
INSERT INTO ESTRELA VALUES (10,30);

-- The Pianist
INSERT INTO ESTRELA VALUES (11,31);
INSERT INTO ESTRELA VALUES (11,32);
INSERT INTO ESTRELA VALUES (11,33);

-- Citizen Kane
INSERT INTO ESTRELA VALUES (12,34);
INSERT INTO ESTRELA VALUES (12,35);
INSERT INTO ESTRELA VALUES (12,36);

-- The Shining
INSERT INTO ESTRELA VALUES (13,4);
INSERT INTO ESTRELA VALUES (13,37);
INSERT INTO ESTRELA VALUES (13,38);

-- World War Z
INSERT INTO ESTRELA VALUES (14,39);
INSERT INTO ESTRELA VALUES (14,40);
INSERT INTO ESTRELA VALUES (14,41);

-- Django Unchained
INSERT INTO ESTRELA VALUES (15,13);
INSERT INTO ESTRELA VALUES (15,42);
INSERT INTO ESTRELA VALUES (15,43);

-- TESTE: exibindo os atores de cada filme
SELECT ATOR.nomeartistico,FILME.titulo_original
FROM ATOR,ESTRELA,FILME
WHERE ATOR.cod = ESTRELA.codator AND 
	FILME.numFilme = ESTRELA.numFilme;
