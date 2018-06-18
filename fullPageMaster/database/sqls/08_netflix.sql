--
-- Database: netflix
--

-- --------------------------------------------------------

--
-- Estrutura da tabela neko
--

CREATE TABLE neko_user (
  id serial,
  idcry varchar(2566) NOT NULL,
  email text NOT NULL,
  senha varchar(255) NOT NULL,
  user_id text  NOT NULL,
  nome text  NOT NULL,
  sobname text  NOT NULL,
  datec date NOT NULL,
  lastlogin timestamp NOT NULL,
  photo text NOT NULL,
  fotoback text NOT NULL,
  configurado int NOT NULL,
  inisession timestamp NOT NULL,
  ip varchar(255) NOT NULL,
  pin varchar(255) NOT NULL,
  gostas text NOT NULL,
  sexo text NOT NULL,
  estado text NOT NULL,
  myanimelist text NOT NULL,
  about text NOT NULL,
  anime_favorite text NOT NULL,
  coins varchar(255) NOT NULL,
  background text NOT NULL,
  vip int NOT NULL,
  visitas varchar(2512) NOT NULL DEFAULT '0',
  xppor varchar(255) NOT NULL DEFAULT '0'
);

--
-- Extraindo dados da tabela neko_user
--

INSERT INTO neko_user (id, idcry, email, senha, user_id, nome, sobname, datec, lastlogin, photo, fotoback, configurado, inisession, ip, pin, gostas, sexo, estado, myanimelist, about, anime_favorite, coins, background, vip, visitas, xppor) VALUES
(1, '421e98297016409383799833f964b73ebf57a193', 'kaway@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', 'kaway', 'Alexandre', 'Silva', '2017-10-30', '2017-10-31 12:41:35', '36926neko.png', '2945556Valkyrie_girls_1920x1080.jpg', 1, '2017-10-30 15:01:30', '187.7.21.117', '5151', 'Programar', 'masc', 'sc', 'kaway404', 'Gosto de programar', 'Boku Dake', '30', 'back2.png', 1, '1', '790'),
(59, '8a3699c679ef1748f7a6a84414eb8698ae71b708', 'joao@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', 'juliana', 'Juliana', 'Nice', '2017-10-30', '2017-10-30 16:08:58', 'default.png', 'xande.png', 1, '2017-10-30 16:08:58', '201.67.147.205', '5151', 'Jogar', 'masc', 'sc', 'juliana', 'Sou legal', 'Naruto', '10', '', 1, '10', '90'),
(60, '765a484e1848b129a2f6fe5efa9686e5a237e112', 'whowdown18@gmail.com', 'cf9f2d44b294bddb613409e331184535bcce9fd3', 'Whowdown', 'Nicolas', 'Ryan', '2017-10-30', '2017-10-30 16:27:28', '6858122d644fa0a10b8b4107c53fdfe9.jpg', 'xande.png', 1, '2017-10-30 16:27:28', '201.71.32.168', 'batata', 'Jogar,ler etc', 'masc', 'estado', 'n sei', 'Não sei', 'Charlotte', '0', 'back2.png', 1, '27', '320'),
(61, '1f500024314ee4b7d5c069dbb2bfddb8772f794b', 'anelisenaiara2006@hotmail.com', 'a873d476f684dd7a02e0ff310c060f547e3b1459', 'anelise_naiara', 'Anelise', 'Naiara', '2017-10-30', '2017-11-01 18:36:36', '880b767fb1a24306d48ad8b6f20f0315_ft.jpg', '832214tenor.gif', 1, '2017-10-30 18:43:33', '200.102.22.22', '2006', 'Dormir', 'fem', 'sc', 'não tenho', 'Sou legal', 'One Punch Man', '10', '5197449back.jpg', 0, '0', '1100'),
(62, '4905a3f1d9eff66e128329ee93cbb80cd0b15f8a', 'teste@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', 'teste', 'Usuario', 'Teste', '2017-10-30', '2017-10-30 20:08:22', 'default.png', 'xande.png', 1, '2017-10-30 20:08:22', '201.67.147.205', '5151', 'Jogar', 'masc', 'sc', 'teste', 'sou legal', 'naruto', '0', '', 0, '0', '0'),
(63, 'a7d9cf2396074a273d572756842b78f983fa4413', 'johny.soares55@gmail.com', 'f7bb3d78388ba9e4878768baddbc176a657f2446', 'JOHNY SOARES', 'JOHNY', 'SOARES', '2017-10-30', '2017-10-30 21:48:18', 'default.png', 'xande.png', 1, '2017-10-30 21:48:18', '168.121.171.226', '2511', 'Escreve blank', 'masc', 'sc', 'Escreve blank', 'Escreve blank', 'Escreve blank', '0', '', 0, '0', '0'),
(64, '2ea94473e436f269ad2360c9c6ccb83557b9a28b', 'guiluigi1712@gmail.com', '918b55dd56abac004fc34aac7faa9231372f253b', 'Luigieiro', 'Guilherme ', 'Luigi', '2017-10-31', '2017-10-31 12:57:03', 'default.png', 'xande.png', 1, '2017-10-31 12:57:03', '191.39.2.134', '1712', 'Animes e jogos ', 'masc', 'sp', 'Não tenho ', 'Irmão do Mario', 'School of elite', '0', '', 0, '5', '20');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_amizades
--

CREATE TABLE netflix_amizades (
  id serial,
  de varchar(200) NOT NULL,
  para varchar(200) NOT NULL,
  aceite varchar(3) NOT NULL DEFAULT 'nao',
  data date NOT NULL
);

--
-- Extraindo dados da tabela netflix_amizades
--

INSERT INTO netflix_amizades (id, de, para, aceite, data) VALUES
(1, '1', '2', 'nao', '2017-12-08'),
(2, '2', '1', 'nao', '2017-12-08'),
(3, '17', '16', 'nao', '2017-12-10'),
(4, '17', '1', 'nao', '2017-12-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_back
--

CREATE TABLE netflix_back (
  id int NOT NULL,
  img text NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_back
--

INSERT INTO netflix_back (id, img) VALUES
(1, '1.png'),
(2, '2.png'),
(3, '3.png'),
(4, '4.png'),
(5, '5.png'),
(6, '6.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_comment
--

CREATE TABLE netflix_comment (
  id serial,
  iduser varchar(255) NOT NULL,
  idprofile varchar(255) NOT NULL,
  episodio varchar(255) NOT NULL,
  texto text NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_history
--

CREATE TABLE netflix_history (
  id serial,
  idvideo varchar(255) NOT NULL,
  idserie varchar(255) NOT NULL,
  idpeople varchar(255) NOT NULL,
  progress text NOT NULL,
  atualprogress text NOT NULL,
  perfil varchar(255) NOT NULL,
  ep text NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_history
--

INSERT INTO netflix_history (id, idvideo, idserie, idpeople, progress, atualprogress, perfil, ep) VALUES
(2, '85', '7', '2', '1.8724615041263728%', '396.032904', '3', '01'),
(3, '258', '27', '2', '0', '0', '3', '01'),
(4, '13', '2', '3', '2.846105702547244%', '753.81594', '4', '01'),
(5, '2', '1', '3', '63.82756647635526%', '1201.437463', '49', '02'),
(7, '185', '21', '3', '59.31310367123215%', '1145.091596', '4', '01'),
(8, '100', '9', '6', '0', '0', '49', '08'),
(9, '124', '16', '7', '1.4931492679443326%', '26.14002', '8', '01'),
(12, '31', '3', '10', '2.613403204945313%', '5.658178', '10', '05'),
(13, '271', '28', '9', '0', '0', '48', '01'),
(14, '271', '28', '9', '5.553793186768622%', '6.083859', '48', '01'),
(15, '31', '3', '9', '0', '0', '10', '05'),
(17, '254', '26', '9', '2.920804142764013%', '8.381747', '10', '09'),
(18, '31', '3', '12', '21.792263477265326%', '320.76611', '10', '05'),
(19, '26', '2', '9', '0', '0', '10', '14'),
(20, '295', '30', '9', '39.47043859508476%', '522.539383', '10', '10'),
(22, '288', '', '9', '0', '0', '10', ''),
(23, '100', '9', '14', '0.272069156659906%', '305.654212', '49', '08'),
(24, '93', '13', '15', '58.757063009335944%', '4745.907281', '16', 'Completo'),
(25, '271', '28', '14', '0', '0', '48', '01'),
(26, '31', '3', '16', '1.0447275589862213%', '222.782454', '10', '05'),
(27, '258', '27', '14', '0', '0', '15', '01'),
(28, '234', '25', '17', '0', '0', '18', '01'),
(29, '295', '30', '18', '6.337152383442522%', '76.87104', '10', '10'),
(30, '76', '6', '13', '0', '0', '14', '01'),
(31, '93', '13', '18', '0', '0', '19', 'Completo'),
(33, '300', '31', '9', '2.133516631207202%', '11.789669', '10', '03'),
(34, '283', '29', '20', '2.769987722167604%', '140.537', '1', 'Completo'),
(35, '2', '1', '20', '63.82756647635526%', '1201.437463', '49', '02'),
(37, '271', '28', '22', '0', '0', '48', '01'),
(38, '2', '1', '22', '63.82756647635526%', '1201.437463', '49', '02'),
(40, '91', '11', '21', '1.4312724893257653%', '95.867526', '22', 'Completo'),
(41, '100', '9', '26', '1.3192831307277766%', '91.659055', '49', '08'),
(42, '2', '1', '26', '63.82756647635526%', '1201.437463', '49', '02'),
(43, '271', '28', '27', '0', '0', '48', '01'),
(44, '295', '30', '29', '0', '0', '10', '10'),
(45, '91', '11', '30', '1.20894875369782%', '87.41047', '31', 'Completo'),
(46, '271', '28', '29', '0', '0', '48', '01'),
(47, '2', '1', '28', '63.82756647635526%', '1201.437463', '49', '02'),
(48, '311', '32', '28', '3.6123224985801485%', '46.292999267578125', '1', '02'),
(51, '283', '29', '32', '2.769987722167604%', '140.537', '1', 'Completo'),
(52, '100', '9', '31', '0', '0', '49', '08'),
(53, '100', '9', '32', '0', '0', '49', '08'),
(54, '2', '1', '32', '63.82756647635526%', '1201.437463', '49', '02'),
(55, '100', '9', '31', '0', '0', '49', '08'),
(56, '91', '11', '32', '0.12647342413741638%', '17.440757', '33', 'Completo'),
(57, '311', '32', '33', '3.6123224985801485%', '46.292999267578125', '1', '02'),
(58, '90', '10', '32', '0.1749072757891973%', '5.187055', '33', '01'),
(59, '311', '32', '34', '3.6123224985801485%', '46.292999267578125', '1', '02'),
(60, '283', '29', '35', '2.769987722167604%', '140.537', '1', 'Completo'),
(61, '284', '30', '35', '0', '0', '36', '01'),
(62, '246', '26', '35', '0', '0', '36', '01'),
(63, '311', '32', '36', '16.79295179719028%', '298.384632', '1', '02'),
(64, '311', '32', '37', '2.3203219421243%', '23.634411', '1', '02'),
(65, '91', '11', '39', '6.527603734096115%', '493.655549', '40', 'Completo'),
(66, '85', '7', '40', '5.449383163078955%', '28.955098', '41', '01'),
(67, '100', '9', '43', '0.26656270488695083%', '205.919344', '49', '08'),
(68, '311', '32', '43', '0', '0', '1', '02'),
(69, '137', '17', '43', '1.7137330339336965%', '405.556163', '44', '01'),
(70, '283', '29', '20', '2.769987722167604%', '140.537', '1', 'Completo'),
(71, '311', '32', '20', '0', '0', '1', '02'),
(72, '32', '3', '20', '2.885489489849631%', '6.711237', '21', '06'),
(73, '283', '29', '46', '2.769987722167604%', '140.537', '1', 'Completo'),
(74, '271', '28', '48', '0', '0', '48', '01'),
(75, '2', '1', '48', '63.82756647635526%', '1201.437463', '49', '02'),
(76, '311', '32', '48', '2.2497843877849317%', '6.686953', '1', '02'),
(77, '28', '3', '48', '0', '0', '48', '02'),
(78, '283', '29', '48', '2.769987722167604%', '140.537', '1', 'Completo'),
(79, '100', '9', '47', '0', '0', '49', '08'),
(80, '271', '28', '47', '0', '0', '47', '01'),
(81, '100', '9', '49', '0', '0', '49', '08'),
(82, '2', '1', '49', '63.82756647635526%', '1201.437463', '49', '02'),
(84, '283', '29', '20', '3.8804918069410452%', '188.202674', '21', 'Completo'),
(85, '311', '32', '1', '0', '0', '1', '02');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_list
--

CREATE TABLE netflix_list (
  id serial,
  iduser varchar(255) NOT NULL,
  idanime varchar(255) NOT NULL,
  time timestamp NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_list
--

INSERT INTO netflix_list (id, iduser, idanime, time) VALUES
(3, '61', '1', '2017-11-01 20:12:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_noti
--

CREATE TABLE netflix_noti (
  id int NOT NULL,
  de varchar(255) NOT NULL,
  para varchar(255) NOT NULL,
  date date NOT NULL,
  tipo varchar(255) NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_noti
--

INSERT INTO netflix_noti (id, de, para, date, tipo) VALUES
(1, '1', '2', '2017-12-08', '1'),
(2, '2', '1', '2017-12-08', '1'),
(3, '17', '16', '2017-12-10', '1'),
(4, '17', '1', '2017-12-10', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_payments
--

CREATE TABLE netflix_payments (
  id serial,
  txnid varchar(20) NOT NULL,
  payment_amount decimal(7,2) NOT NULL,
  payment_status varchar(25) NOT NULL,
  itemid varchar(25) NOT NULL,
  createdtime timestamp NOT NULL
);

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_post
--

CREATE TABLE netflix_post (
  id serial,
  texto text  NOT NULL,
  id_user int NOT NULL,
  spam varchar(2555) NOT NULL,
  background int NOT NULL,
  tim timestamp NOT NULL,
  foto text NOT NULL,
  tipo varchar(255) NOT NULL,
  anime varchar(255) NOT NULL,
  video text NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_proezas
--

CREATE TABLE netflix_proezas (
  id int NOT NULL,
  id_user varchar(255) NOT NULL,
  data timestamp NOT NULL,
  tipo varchar(2555) NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_proezas
--

INSERT INTO netflix_proezas (id, id_user, data, tipo) VALUES
(12, '1', '2017-12-08 00:00:00', '4'),
(13, '3', '2017-12-08 00:00:00', '4');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_profiles
--

CREATE TABLE netflix_profiles (
  id serial,
  idcry int NOT NULL,
  nome text NOT NULL,
  datec timestamp NOT NULL,
  iduser varchar(255) NOT NULL,
  foto varchar(255) NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_profiles
--

INSERT INTO netflix_profiles (id, idcry, nome, datec, iduser, foto) VALUES
(1, 0, 'Alexandre', '2017-12-11 09:45:23', '1', '1'),
(3, 0, 'CoelhoCoelhudo', '2017-12-11 10:16:15', '2', '1'),
(4, 0, 'lucas', '2017-12-11 10:22:36', '3', '1'),
(5, 0, 'ClaraL', '2017-12-11 10:29:06', '4', '1'),
(6, 0, 'Rafael Freitas', '2017-12-11 10:31:46', '5', '1'),
(7, 0, 'Yuu', '2017-12-11 10:31:56', '6', '1'),
(8, 0, 'Darks Zika', '2017-12-11 10:32:32', '7', '1'),
(9, 0, 'Shinkai', '2017-12-11 10:32:33', '8', '1'),
(10, 0, 'ArslanSenki', '2017-12-11 10:39:19', '9', '1'),
(11, 0, 'Igor', '2017-12-11 10:47:19', '10', '1'),
(12, 0, 'EroOtaku', '2017-12-11 10:48:40', '11', '1'),
(13, 0, 'sleirs', '2017-12-11 10:55:52', '12', '1'),
(14, 0, 'André', '2017-12-11 11:09:26', '13', '1'),
(15, 0, 'joker', '2017-12-11 11:11:54', '14', '1'),
(16, 0, 'Carlso', '2017-12-11 11:13:05', '15', '1'),
(17, 0, 'Fantin', '2017-12-11 11:13:38', '16', '1'),
(18, 0, 'Kawan', '2017-12-11 11:14:14', '17', '1'),
(19, 0, 'Adriel Rodrigues', '2017-12-11 11:18:05', '18', '1'),
(20, 0, 'Krayden', '2017-12-11 11:19:56', '19', '1'),
(21, 0, 'Marcos', '2017-12-11 11:32:04', '20', '1'),
(22, 0, 'Shikamadoshii', '2017-12-11 11:34:12', '21', '1'),
(23, 0, 'Daniel', '2017-12-11 11:35:20', '22', '1'),
(24, 0, 'wilorder', '2017-12-11 11:37:43', '23', '1'),
(25, 0, 'Biersack', '2017-12-11 11:38:17', '24', '1'),
(26, 0, 'TioBsk8', '2017-12-11 11:46:51', '25', '1'),
(27, 0, 'lorrayne', '2017-12-11 12:00:25', '26', '1'),
(28, 0, 'Sl33p1', '2017-12-11 12:03:27', '27', '1'),
(29, 0, 'narutokevyn', '2017-12-11 12:14:17', '28', '1'),
(30, 0, 'Okami', '2017-12-11 12:14:28', '29', '1'),
(31, 0, 'Babi', '2017-12-11 12:15:04', '30', '1'),
(32, 0, 'gabriel', '2017-12-11 12:37:16', '31', '1'),
(33, 0, 'Pierre', '2017-12-11 12:38:02', '32', '1'),
(34, 0, 'Jdhekdh', '2017-12-11 12:40:32', '33', '1'),
(35, 0, 'hjkl', '2017-12-11 12:56:30', '34', '1'),
(36, 0, 'Mikaze', '2017-12-11 12:58:06', '35', '1'),
(37, 0, 'Yacchan', '2017-12-11 12:59:39', '36', '1'),
(38, 0, '- Shin -', '2017-12-11 13:00:28', '37', '1'),
(39, 0, 'Lj10', '2017-12-11 13:01:07', '38', '1'),
(40, 0, 'Junior1559', '2017-12-11 13:02:31', '39', '1'),
(41, 0, 'Lexn', '2017-12-11 13:04:58', '40', '1'),
(42, 0, 'Renan', '2017-12-11 13:16:23', '41', '1'),
(43, 0, 'Tetinha de jesus', '2017-12-11 13:20:29', '42', '1'),
(44, 0, 'Erick ', '2017-12-11 13:25:10', '43', '1'),
(45, 0, 'Sara', '2017-12-11 13:26:59', '45', '1'),
(46, 0, 'jshatake', '2017-12-11 14:20:04', '46', '1'),
(47, 0, 'Gui', '2017-12-11 14:32:08', '47', '1'),
(48, 0, 'Luan', '2017-12-11 14:33:24', '48', '1'),
(49, 0, 'Gab', '2017-12-11 14:39:11', '49', '1'),
(50, 0, 'lixochan', '2017-12-11 15:05:23', '50', '1'),
(51, 0, 'Sae', '2017-12-11 15:27:24', '51', '1'),
(52, 0, 'Iago Kun', '2017-12-11 15:49:32', '52', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_recomendado
--

CREATE TABLE netflix_recomendado (
  id serial,
  idserie varchar(255) NOT NULL,
  views int NOT NULL,
  baka int NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_recomendado
--

INSERT INTO netflix_recomendado (id, idserie, views, baka) VALUES
(1, '1', 1, 1),
(2, '2', 1, 1),
(3, '3', 1, 1),
(4, '6', 1, 1),
(5, '8', 1, 1),
(6, '9', 1, 1),
(7, '7', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_series
--

CREATE TABLE netflix_series (
  id serial,
  name text NOT NULL,
  desct text NOT NULL,
  foto text NOT NULL,
  fotoback text NOT NULL,
  logo text NOT NULL,
  tipo varchar(255) NOT NULL,
  views varchar(255) NOT NULL,
  gen1 text NOT NULL,
  gen2 text NOT NULL,
  gen3 text NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_series
--

INSERT INTO netflix_series (id, name, desct, foto, fotoback, logo, tipo, views, gen1, gen2, gen3) VALUES
(1, 'One Punch Man', 'A história passa-se numa cidade japonesa fictícia chamada de Cidade Z, onde aparecem vários monstros estranhos que causam vários desastres, geralmente esses monstros são resultados de uma experiência maluca ou de uma mutação genética. Saitama, o protagonista, é um herói incrivelmente forte que derrota facilmente esses monstros ou outros vilões com um único soco. No entanto, devido à sua força esmagadora, Saitama tornou-se entediado e está constantemente tentando encontrar adversários mais fortes que podem lutar de igual contra ele.', 'http://gamehall.uol.com.br/v10/wp-content/uploads/2016/01/One-Punch-Man-Capa-Anime.jpg', 'http://videos.woobyanimes.com/animes/onepunchman/background.jpg', 'http://videos.woobyanimes.com/animes/onepunchman/logo.png', '3', '75', '0', '0', '0'),
(2, 'Dungeon Ni Deai', 'Conhecido como o "Dungeon", a cidade de Orario possui um enorme labir no subsolo. Seu nome estranho atrai excitação, ilusões de honra, e as esperanças de romance com uma garota bonita. Nesta cidade de sonhos e desejos, novo aventureiro Sino Cranel tem o fatídico encontro com a pequena deusa Hestia. Assim começa a história de um menino que se esforça para se tornar o melhor aventureiro e uma deusa solitária em busca de seguidores tanto na esperança de alcançar seus objetivos e, talvez, ter algum romance ao lado.', 'https://img.fstatic.com/LZwJwG8d6fKu27CC00WaCvcmTiI=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-darou-ka_t120169.jpg', 'https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-196898.jpg', 'https://fanart.tv/fanart/tv/289882/hdtvlogo/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-darou-ka-552b9465bd602.png', '3', '23', '0', '0', '0'),
(3, 'Sword Art Online', 'No ano de 2022, a Realidade Virtual Massive Multiplayer RPG Online (VRMMORPG), Sword Art Online (SAO), é lançado. Com o equipamento Nerve Gear, um capacete de realidade virtual que estimula no usuário cinco sentidos através de seu cérebro, os jogadores podem experimentar e controlar seus personagens no jogo com suas mentes. Em 6 de novembro de 2022, todos os jogadores ao entrar pela primeira vez, descobrem que eles são incapazes de sair. Eles são então informados por Kayaba Akihiko, o criador do SAO, que se eles desejam ser livres, eles devem chegar ao 100 º andar da torre do jogo e derrotar o chefe final. No entanto, se os seus avatares morrerem no jogo, seus corpos também morrerão no mundo real. A história segue com Kirito, um jogador habilidoso, que está determinado a vencer o jogo.', 'http://www.animexis.com.br/wp-content/uploads/2014/07/Sword-Art-Online1-450x281.jpg?x24007', 'https://images4.alphacoders.com/640/640956.jpg', 'https://img00.deviantart.net/567c/i/2013/280/4/b/sword_art_online_logo___render_by_caster00-d6pka6q.png', '3', '36', '0', '0', '0'),
(4, 'No Game No Life', 'A história de “No Game, No Life” se passa ao redor de Sora e Shiro, irmãos cuja a reputação como NEETs brilhantes, gamers reclusos, espalhou várias lendas urbanas pela internet, Esses dois gamers até mesmo consideram o mundo real como um “jogo com péssimos gráficos”. Certo dia, eles são evocados por um garoto chamado “Deus” para um mundo alternativo. Lá, Deus proibiu a guerra e declarou este um mundo onde “tudo é decidido com jogos”, até fronteiras de países. A humanidade foi conduzida de volta à única cidade restante pelas outras raças. Sora e Shiro, os irmãos inúteis se tornarão os “Salvadores da Humanidade” neste mundo alternativo? “Que os jogos comecem!”', 'https://orig00.deviantart.net/8a3b/f/2014/153/7/5/no_game_no_life__anime__by_pain4-d7ktk6f.png', 'http://images6.fanpop.com/image/photos/40500000/no-game-no-life3-no-game-no-life-40535949-1550-955.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/No-Game-No-Life-anime-logo.svg/1200px-No-Game-No-Life-anime-logo.svg.png', '3', '24', '0', '0', '0'),
(5, 'Boku Dake Ga Inai Machi', 'Esforçado autor de mangá, Satoru Fujinuma é assolado por seu medo de se expressar. Entretanto, ele tem a habilidade sobrenatural de ser forçado a prevenir mortes e catástrofes sendo enviado de volta no tempo antes dos incidentes acontecerem, repetindo até que o incidente seja prevenido. Um dia se envolve em um acidente em que é considerado assassino. Desesperado para salvar a vítima, ele volta no tempo e se vê como um aluno da pré-escola um mês…', 'https://theprocrastinadores.files.wordpress.com/2016/03/boku-dake-ga-inai-machi-full-1961958.jpg', 'https://images8.alphacoders.com/697/thumb-1920-697276.png', 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Boku_Dake_ga_Inai_Machi_logo.png', '3', '36', '0', '0', '0'),
(6, 'Nyanko Days', 'O anime conta a história de Tomoko, uma garota tímida que ao chegar em casa da escola é saudada pelos seus três gatos, Ma, Ro e Shi.', 'https://static.comicvine.com/uploads/scale_small/6/67663/5639781-nyanko.jpg', 'https://wallscover.com/images/nyanko-days-7.jpg', 'https://upload.wikimedia.org/wikipedia/commons/e/e9/Nyanko_Days_logo.png', '3', '7', '0', '0', '0'),
(7, 'Torodora', 'É um novo ano escolar e Ryuuji Takasu descobre que não só ele é da mesma classe como seu melhor amigo, Yuusaku Kitamura, mas também Minori Kushieda quem ele teve uma paixão não revelada por algum tempo. Junto com os dois vem o “Palmtop Tiger”, minúsculo Taiga Aisaka e melhor amiga de Minori. Apesar de sua pequena estatura, Taiga não tira nada de ninguém e é secretamente apaixonado por Kitamura. Ryuuji e Taiga, apesar de sua relação óleo e água, concordam em apoiar-se mutuamente em suas missões para o desejo dos seus corações.', 'https://simg.minhateca.com.br/74f1fa780d93a1f66ddf572dd931067b96319cc5?url=https%3A%2F%2F2.bp.blogspot.com%2F-YB-zeSzqtrQ%2FVduEIc06WjI%2FAAAAAAAAAbM%2Fc3c6BOhnf6c%2Fs1600%2Fbanner.jpg', 'https://images7.alphacoders.com/332/332270.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Toradora-Logo-Vector.svg/2000px-Toradora-Logo-Vector.svg.png', '3', '9', '0', '0', '0'),
(9, 'Black Clover', 'Neste mundo, magia é tudo... A algum tempo atrás, a humanidade foi quase aniquilada pelos demônios... Em seu resgate surgiu aquele que futuramente ficaria conhecido como Mago Imperador, o mais poderoso mago do Reino Clover. Anos depois, sonhando em se tornarem o Mago Imperador, dois órfãos pobres Yuno e Asta fazem uma promessa que um deles alcançaria esse sonho. Yuno é o gênio dentre os dois, reverenciado por todos a sua volta com uma poderosa magia de vento. Asta mesmo se esforçando todos os dias, não possui qualquer magia... Mas tudo muda no dia em que ambos receberiam a prova de que são verdadeiros magos... O dia de receberem seus grimórios!', 'https://ptanime.com/wp-content/uploads/2015/10/Black-Clover-Volume-2.jpg', 'https://i2.wp.com/www.icrewplay.com/wp-content/uploads/2017/09/02.jpg?fit=1918%2C1400', 'http://vignette4.wikia.nocookie.net/blackclover/images/a/a2/Black_Clover_title_art.png/revision/latest?cb=20150903080636', '3', '38', '0', '0', '0'),
(10, 'Boruto', 'Boruto é o filho de Naruto, o Sétimo Hokage, e rejeita completamente seu pai. Por trás disso, ele quer superar seu pai que é respeitado como um herói. Ele acaba conhecendo um dos amigos de seu pai, Sasuke, e pede para se tornar o seu… aprendiz! As cortinas subirão para a história da nova geração criada por Masashi Kishimoto.', 'https://1.bp.blogspot.com/-lez5BK4Vupw/V5erZNdT57I/AAAAAAAAn74/WRBU79wWkh4ylDqH1nN9_zXPiuBCQ9I1wCLcB/s1600/boruto01-thumb-400x635-3548.jpg', 'https://i0.wp.com/collectible506.com/wp-content/uploads/2017/06/boruto1.jpg?fit=1200%2C675&ssl=1', 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Boruto_logo.png', '3', '29', '0', '0', '0'),
(11, 'Koe no Katachi', 'Como uma juventude selvagem, a estudante da escola primária, Shouya Ishida, procurou vencer o tédio das maneiras mais cruéis. Quando o surdo Shouko Nishimiya se transfere para a classe dele, Shouya e o resto da turma a amassam por distração. No entanto, quando sua mãe notifica a escola, ele é identificado e culpado por tudo feito para ela. Com Shouko se transferindo da escola, Shouya fica à mercê de seus colegas de classe. Ele é completamente condenado ao ostracismo durante todo o ensino fundamental e médio, enquanto professores fecham a visão.\\n\\nAgora, em seu terceiro ano de ensino médio, Shouya ainda está atormentado por seus erros quando jovem. Sinceramente arrependendo de suas ações passadas, ele expõe uma jornada de redenção: conhecer Shouko mais uma vez e corrigir.\\n\\nKoe no Katachi conta o recôndito conto da reunião de Shouya com Shouko e suas honestias tentativas de redimir-se, ao mesmo tempo em que continuam assombradas pelas sombras de seu passado.', 'https://myanimelist.cdn-dena.com/images/anime/6/79634l.jpg', 'http://images6.fanpop.com/image/photos/40600000/Koe-no-Katachi-koe-no-katachi-40617953-1920-1440.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Koe_no_katachi_logo.png', '1', '18', '0', '0', '0'),
(12, 'Boruto: Naruto the Movie', 'Boruto é o filho do sétimo Hokage e o rejeita completamente como pai. Além disso, ele espera superar Naruto, que é respeitado como um herói. Ele acaba por encontrar o amigo do seu pai, Sasuke, e pede para se tornar seu… aprendiz?!?', 'https://myanimelist.cdn-dena.com/images/anime/4/78280.jpg', 'https://images6.alphacoders.com/630/thumb-1920-630925.jpg', 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Boruto_Naruto_the_Movie_logo.png', '1', '7', '0', '0', '0'),
(13, 'Dragon Ball Z: O Renascimento de Freeza', 'Sorbet e Tagoma, dois remanescentes do exército de Freeza, chegam à Terra em busca das Esferas do Dragão. A ideia é reuní-las para ressuscitar seu antigo líder, que foi vencido após uma batalha contra Goku. O plano é bem-sucedido e, com isso, Freeza retorna disposto a se vingar. Para tanto, ele se prepara durante meses, de forma que possa reencontrar Goku no auge do seu poder.', 'http://br.web.img3.acsta.net/pictures/15/03/20/20/24/021239.jpg', 'http://animewp.com/wallpaper/2015/09/dragon-ball-z-movie-12-desktop-wallpaper.jpg', 'http://www.kamisama.com.br/wp-content/uploads/2014/11/logo.png', '1', '14', '0', '0', '0'),
(14, 'Another', '26 anos atrás, em uma classe de terceiro colegial, uma estudante chamada Misaki era a mais popular e adorada do colégio por causa de sua beleza e sua qualidade nos esportes. Porém um dia Misaki acaba por vir falecer e como homenagem seus amigos decidem “fingir” que ela está viva com eles até o dia da formatura. Anos depois, em uma primavera de 1998, um garoto chamado Kouichi Sakakibara se muda para a cidade e começa a estudar na mesma escola do ocorrido. Lá ele encontra todos os alunos rodeados por uma estranha atmosfera, principalmente uma bela estudante chamada Misaki Mei. Porém o que Kouichi não esperava é que a Misaki de sua sala tivesse mais relações do que o esperado com a história do passado do colégio.', 'https://img.fstatic.com/j_JJpTnA5gbsFb0PghJThVyEDMw=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2014/07/another_t51362.jpg', 'https://images6.alphacoders.com/639/thumb-1920-639813.jpg', 'https://vignette.wikia.nocookie.net/another/images/9/96/Another_Logo.png/revision/latest?cb=20130514172916', '3', '9', '0', '0', '0'),
(15, 'Ano Hana', 'Jinta Yadomi e seu grupo de amigos de infância se tornaram estranhos depois de um trágico acidente separá-los. Agora em seus anos de ensino médio, uma súbita surpresa obriga cada um deles a enfrentar a sua culpa sobre o que aconteceu naquele dia e entrar em acordo com os fantasmas de seu passado.', 'https://chuvadenanquim.files.wordpress.com/2013/03/anohanamovie.jpg', 'https://www.animeunited.com.br/wp-content/uploads/2017/05/ano_hana___the_gang_by_saber_cow-d4yytmd.png', 'https://www.animeclick.it/prove/upload/img/News27880.png', '3', '11', '0', '0', '0'),
(16, 'Boku no Hero Academia 1º', 'O que é um herói? Para Midoriya Izuku, a resposta dessa pergunta sempre foi simples: “Tudo que eu quero ser!” E quem é o maior herói? Bem, o lendário All Might (Todo Poderoso), é claro. All Might é o herói número um e também o “Símbolo da Paz” mundial. Nem mesmo em seus sonhos mais loucos Izuku poderia imaginar que logo seu caminho cruzaria o de seu herói de infância. Em Boku no Hero Academia o status é governado pelas “Individualidades”, superpoderes singulares que se desenvolvem na infância. Mas infelizmente, o viciado em heróis, Midoriya “Deku” Izuku nunca teve uma Individualidade. Isto é, até conhecer All Might, o maior herói de todos. A transformação de sonhador em herói de Izuku começa na Academia U.A., a melhor escola de treinamento de heróis do Japão. Izuku fica eufórico quando é aceito para essa academia de prestígio, especialmente quando descobre que All Might é um dos professores. Que surpresas essa academia poderosa aguarda? Izuku será capaz de acompanhar os colegas de classe de elite?', 'https://1.bp.blogspot.com/-WvJWftYmvTY/VwEa_ggLTNI/AAAAAAAAHtc/rI30fCEPzNkJENyjNAZujHWuxTDyMh1Gg/s1600/Boku-no-Hero-poster-promo-v2.jpg', 'https://images4.alphacoders.com/698/698782.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Boku_no_Hero_Academia_Logo.png', '2', '13', '0', '0', '0'),
(17, 'Boku no Hero Academia 2ªT', 'Segunda Temporada , O que é um herói? Para Midoriya Izuku, a resposta dessa pergunta sempre foi simples: “Tudo que eu quero ser!” E quem é o maior herói? Bem, o lendário All Might (Todo Poderoso), é claro. All Might é o herói número um e também o “Símbolo da Paz” mundial. Nem mesmo em seus sonhos mais loucos Izuku poderia imaginar que logo seu caminho cruzaria o de seu herói de infância. Em Boku no Hero Academia o status é governado pelas “Individualidades”, superpoderes singulares que se desenvolvem na infância. Mas infelizmente, o viciado em heróis, Midoriya “Deku” Izuku nunca teve uma Individualidade. Isto é, até conhecer All Might, o maior herói de todos. A transformação de sonhador em herói de Izuku começa na Academia U.A., a melhor escola de treinamento de heróis do Japão. Izuku fica eufórico quando é aceito para essa academia de prestígio, especialmente quando descobre que All Might é um dos professores. Que surpresas essa academia poderosa aguarda? Izuku será capaz de acompanhar os colegas de classe de elite?', 'http://www.animesonlinebr.com.br/thumbs/14995248835960ef132d738.jpg', 'https://images4.alphacoders.com/698/thumb-1920-698782.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Boku_no_Hero_Academia_Logo.png', '2', '40', '0', '0', '0'),
(18, 'Deadman Wonderland', 'Num dia normal de aula Ganta e seus melhores amigos estavam combinando o lugar da viagem do colégio e ao a aula começar Ganta começa a escutar uma música familiar para ele. Um homem de vermelho aparece voando do lado de fora da sala e dá um golpe que quando Ganta levanta sua sala inteira foi morta, ele tenta bater no homem de vermelho, mas é empurrado para a parede e ao invés de mata-lo o homem de vermelho implanta uma pedra vermelha em Ganta que desmaia. Ganta acorda no hospital e mesmo tendo acordado a pouco tempo policiais invadem seu quarto dizendo que ele está preso por assassinar todos os alunos de uma sala de aula e um advogado lhe dá um cartão. Ganta entra em choque pois não foi ele quem assassinou seus amigos e se defende dizendo que o homem de vermelho feriu seu peito, Ganta abre a camisa tentando mostrar o ferimento, mas ele não está lá. Ganta é levado ao tribunal e condenado à pena de morte, Ganta se revolta e começa a dizer que não foi ele e na mesma hora os pais dos alunos mortos saem dos seus lugares e começam a bater em Ganta. Os pais são retirados e Ganta é levado à única prisão privada do Japão, a prisão que é também um parque de diversões pois faz seus prisioneiros fazerem shows para o lucro da mesma. Ganta é recepcionado com outros prisoneiros pela Chefe dos guardas da prisão que dá uma bolsa com coisas que eles precisarão para sua estadia na prisão Deadman Wonderland.', 'http://2.bp.blogspot.com/-ylcoi8AGCsg/TbIQxSxMi_I/AAAAAAAAAEQ/JsuiHFG8QtI/s1600/DeadManWonderland.jpg', 'https://i1.wp.com/recommendmeanime.com/wp-content/uploads/2017/09/anime-like-deadman-wonderland.png?fit=1191%2C670&ssl=1', 'https://vignette4.wikia.nocookie.net/deadmanwonderland/images/2/20/Logo_transparent.png/revision/latest?cb=20110723224718', '2', '0', '0', '0', '0'),
(19, 'Elfen Lied', 'Diclonius são uma espécie de humanos mutantes, que dizem, são os escolhidos de Deus. Graças aos seus grandes poderes, eles se tornariam uma ameaça para a humanidade, e por isso foram aprisionados pelo governo num laboratório. Lucy, uma jovem e psicótica Diclonius, consegue escapar da confinamento e brutalmente mata a maioria dos guardas do laboratório. Ela sobrevive e vai parar em uma praia onde dois adolescentes chamados Kouta e Yuka a descobrem. Lucy é nomeada com a única coisa que ela consegue dizer após ter perdido a memória: ‘Nyuu’, e os dois deixam que ela viva na casa de Kouta. Porém, parece que a “Lucy demoníaca” ainda não está morta… .', 'https://img.fstatic.com/ye7354hVPIWKt6PVdVUb7K_E010=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2014/08/elfen-lied_t31188_26.jpg', 'https://images.alphacoders.com/150/150063.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Elfen_Lied_Logo.svg/1200px-Elfen_Lied_Logo.svg.png', '2', '51', '0', '0', '0'),
(20, 'Youjo Senki', 'Na linha de frente da guerra se encontra uma menininha. Cabelos loiros, olhos azuis, e uma pele branca como porcelana. Ela comanda seu esquadrão com uma voz ríspida. Seu nome é Tanya Degurechaff. Mas, na realidade, ela é um dos homens da elite japonesa mais assalariada, renascida como uma pequena garotinha após ter enfurecido um ser misterioso, que chamava a si mesmo de Deus. Esta garotinha, que prioriza eficiência e sua própria carreira acima de tudo, vai se tornar o maior perigo contra os magos do exército imperial.', 'https://myanimelist.cdn-dena.com/images/anime/5/82890.jpg', 'https://images.alphacoders.com/803/thumb-1920-803896.png', 'https://upload.wikimedia.org/wikipedia/commons/b/ba/Youjo_Senki_amine_logo.png', '2', '17', '0', '0', '0'),
(21, 'Mob Psycho 100', 'Kageyama Shigeo (ou \\"Mob\\") é um estudante do 8º ano com habilidades psíquicas. Desde pequeno, ele é capaz de entortar colheres e fazer objetos levitarem usando sua mente, mas, aos poucos, passou a evitar usar suas habilidades em público devido à atenção negativa que recebia. Agora, a única coisa que ele quer é se tornar amigo de uma garota de sua classe, Tsubomi. Junto com seu \\"mentor psíquico\\" (que não tem poderes psíquicos), ele continua sua vida cotidiana, tentando realizar seu objetivo de vida. ', 'https://img.fstatic.com/HfgWcSqljbp7tov8l981eJ737wo=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2016/08/sd.jpg', 'https://images.alphacoders.com/706/thumb-1920-706757.png', 'https://i.imgur.com/9HfWTVf.png', '2', '11', '0', '0', '0'),
(22, 'Absolute Duo', 'A história começa com Blaze(Chama)- Um tipo de arma que é a manifestação da alma de um ser humano. Depois de perder um ente querido, Tooru Kokonoe se matricula na Kouryou Academy, ele passa a ser qualificado para usar a Blaze, mas por algum motivo a sua Blaze não é uma arma e sim um escudo. Além disso, a escola que ele se matriculou ensina técnicas de combate e graças ao sistema de duplas de combate da escola, ele acaba indo viver com uma linda e misteriosa garota de cabelos prateados.', 'https://pbs.twimg.com/media/B6rlnSgCcAAxxDE.jpg', 'https://pm1.narvii.com/5966/004b4a6669881ead9cd5f9dff7faca4b59c3cf9d_hq.jpg', 'https://img00.deviantart.net/3021/i/2015/280/8/6/absolute_duo_title_logo_by_arisumatio-d9c8ipz.png', '2', '4', '0', '0', '0'),
(25, 'Zankyou no Terror', 'Numa versão alternativa do presente, Tóquio foi dizimada por um ataque terrorista chocante e a única pista para a identidade do culpado é um vídeo bizarro carregado na internet. A polícia, perplexa com essa pista secreta, é impotente em deter a paranoia que se espalha pela população. Enquanto o mundo busca o mentor criminoso para culpar por esta tragédia, duas crianças misteriosas, que não deviam existir, realizam seu plano hediondo com maestria. Amaldiçoados a andar por este mundo sob os nomes de Nove e Doze, os dois se combinam para formar a \\"Esfinge\\", uma entidade clandestina que determina acordar as pessoas e apertar o gatilho deste mundo.', 'https://static.anime21.blog.br/2017/07/Zankyou-no-Terror-HD-Wallpaper-753x424.jpg', 'https://images8.alphacoders.com/764/thumb-1920-764362.jpg', 'https://img00.deviantart.net/3853/i/2014/282/f/f/zankyou_no_terror_logo__png__by_daedalus_net-d827sr7.png', '2', '6', '0', '0', '0'),
(26, 'Zero Kara Hajimeru Mahou No Sho', 'Ano 526 do Calendário Litúrgico. O mundo sabia que bruxas existiam, e que praticavam atos notórios de bruxaria. Mesmo assim, o mundo não sabia nada sobre o estudo da magia. A história segue um mercenário meio homem, meio besta, humanos os chamam zombando como Bestiais. Ele sempre sonhou em se tornar humano, mas um dia, conheceu uma bruxa que mudaria sua vida para sempre.', 'https://www.animeunited.com.br/wp-content/uploads/2017/01/mahonosho_visual.jpg', 'https://i.pinimg.com/originals/cc/98/eb/cc98ebf93acb196675a26267e02b6984.png', 'https://upload.wikimedia.org/wikipedia/fr/8/8a/Grimoire_of_Zero_logo.png', '2', '12', '0', '0', '0'),
(27, 'Charlotte', 'Pouquíssimos garotos e garotas despertam habilidades especiais. Otosaka Yu usa sua habilidade sem o conhecimento de outras pessoas para ter uma vida escolar satisfatória. Então, uma garota chamada Tomori Nao aparece de repente diante dele. Seu encontro revela o destino dos portadores de habilidades especiais', 'https://upload.wikimedia.org/wikipedia/en/5/51/Charlotte_anime.jpg', 'https://ptanime.com/wp-content/uploads/2016/04/Charlotte-Anime-Capa.jpg', 'https://vignette.wikia.nocookie.net/charlotte-anime/images/3/32/Logo_charlotte.png/revision/latest?cb=20141223111620', '2', '9', '0', '0', '0'),
(28, 'Eromanga Sensei', 'Esta nova comédia romântica entre irmãos gira em torno de Masamune Izumi, um autor colegial de light novels e sua irmãzinha, Masamune Sagiri, uma menina fechada que não sai de seu quarto há pelo menos um ano. O garoto quer que sua irmã saia de seu quarto, especialmente porque ela é a única família que ele possui. Não fosse o bastante, Izumi ainda tem que lidar com o ilustrador de suas obras, o auto-intitulado “Ero Manga Sensei”, alguém cuja identidade verdadeira ele desconhece, reconhcendo-o apenas com um pervertido de marca maior.', 'https://pbs.twimg.com/media/C9MEk5sUIAAUcIT.jpg:large', 'https://images5.alphacoders.com/820/thumb-1920-820979.png', 'http://eromanga-senseiusa.com/assets/img/common/nav/logo.png', '2', '31', '0', '0', '0'),
(29, 'Kimi no wa', 'Mitsuha Miyamizu, uma garota do ensino médio, anseia viver a vida de um menino na movimentada cidade de Tóquio - um sonho que contrasta com sua vida presente no campo. Enquanto isso na cidade, Taki Tachibana vive uma vida ocupada como estudante do ensino médio enquanto faz malabarismos com seu trabalho a tempo parcial e espera um futuro na arquitetura.\\n\\nUm dia, Mitsuha desperta em uma sala que não é dela e de repente se encontra vivendo a vida dos sonhos em Tóquio, mas no corpo de Taki! Em outros lugares, Taki encontra-se vivendo a vida de Mitsuha no campo humilde. Em busca de uma resposta a esse estranho fenômeno, eles começam a procurar um pelo outro.\\n\\nKimi no Na wa. gira em torno das ações de Mitsuha e Taki, que começam a ter um impacto dramático sobre a vida do outro, tecendo-os em um tecido mantido unido pelo destino e circunstância.', 'https://myanimelist.cdn-dena.com/images/anime/5/87048.jpg', 'https://blogs-images.forbes.com/olliebarder/files/2016/09/kiminonawa_boxoffice.jpg', 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Shigatsu_wa_Kimi_no_Uso_logo.png', '1', '27', '0', '0', '0'),
(30, 'Death Parade', 'Após a morte, os humanos são mandados para o céu ou para o inferno. Mas, alguns acabam indo parar no Queen Decim, um bar onde um homem misterioso de cabelos brancos, chamado Decim, trabalha. Todos que vão parar nesse lugar são desafiados a jogar um jogo mortal, onde suas verdadeiras personalidades são reveladas, sendo que o perdedor do jogo morrerá.', 'http://otakusphere.com/wp-content/uploads/2017/01/DeathParade.jpg', 'http://i.imgur.com/e8OPAPV.png', 'https://vignette4.wikia.nocookie.net/death-parade/images/8/89/Wiki-wordmark.png/revision/latest?cb=20150126143615', '2', '33', '0', '0', '0'),
(31, 'Gangsta.', 'Na vil e sombria cidade de Ergastulum, cheia de homens poderosos e ladrõezinhos, prostitutas à solta e policiais sujos, há alguns trabalhos sujos demais até mesmo para seus habitantes cansados lidarem. Conheça os \\"Fazem-Tudo\\", Nic e Worick, que cuidam dos trabalhos que ninguém mais vai resolver. Até o dia que um tira que conhecem pede ajuda para derrubar uma nova gangue se metendo no território de uma família da máfia. Parece ser um negócio e destruição como sempre, mas os Fazem-Tudo estão prestes a descobrir que este trabalho é muito mais do que esperavam.', 'https://theanikatsuki.files.wordpress.com/2016/12/img_0168.jpg?w=600', 'http://www.animepro.com.br/blog/wp-content/uploads/2014/07/35.jpg', 'https://orig00.deviantart.net/52d9/f/2016/050/9/8/gangsta___logo_red_by_zeref_ftx-d9sbbgy.png', '2', '9', '0', '0', '0'),
(32, 'inuyashiki', 'Inuyashiki Ichirou está sem sorte. Enquanto só tem 58 anos, seu visual geriátrico sempre faz acharem que ele é um velho patético para aqueles ao seu redor, o fazendo ser constantemente ignorado e desrespeitado por sua família, mesmo com tudo que fez por eles. Acima disso, seu médico revelou que ele tem câncer e parece que possui pouco tempo restante nesse mundo. Mas justo quando as coisas não podiam piorar, uma luz cegante na noite atinge o lugar em que ele estava. Ele depois acorda e se encontra sem ferida alguma, mas logo começa a perceber que tem algo diferente em si. Acaba que essas novas e estranhas mudanças são o que Ichirou precisa para ter uma nova pegada na vida, e agora parece que não há nada que o impeça de ser um herói digno do respeito que ele nunca teve… a não ser, é claro, que tivesse alguém por aí com essas mesmas mudanças.', 'https://myanimelist.cdn-dena.com/images/anime/7/88471l.jpg', 'https://i.imgur.com/UFLueFl.png', 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Inuyashiki-anime-logo.jpg', '2', '14', '0', '0', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_swit_pro
--

CREATE TABLE netflix_swit_pro (
  id serial,
  idpf varchar(255) NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_swit_pro
--

INSERT INTO netflix_swit_pro (id, idpf) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_user
--

CREATE TABLE netflix_user (
  id serial,
  idcry varchar(2555) NOT NULL,
  email text NOT NULL,
  password varchar(255) NOT NULL,
  datec date NOT NULL,
  lastlogin timestamp NOT NULL,
  configurado int NOT NULL,
  ip varchar(255) NOT NULL,
  banned int NOT NULL,
  inisession timestamp NOT NULL,
  expirado date NOT NULL,
  admin int NOT NULL,
  username text NOT NULL,
  nome text NOT NULL,
  sobname text NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_user
--

INSERT INTO netflix_user (id, idcry, email, password, datec, lastlogin, configurado, ip, banned, inisession, expirado, admin, username, nome, sobname) VALUES
(1, '3326c838687ea0d9aed7397e217e2bcc8f6de42d', 'kaway@hotmail.com', 'bf235653dbd21fbe510e6bd8ce0535fead76131b', '2017-12-11', '2017-12-11 10:27:01', 1, '179.252.244.212', 0, '2017-12-11 00:00:00', '2018-12-11', 1, 'kaway', 'Alexandre', 'Silva'),
(2, 'fe3534ce8bb7b0877f86be1ae8b6356dbff5d713', 'renan.kiyoshi.shimada@hotmail.com', '18906e0904618ede39ef2e75aa4e90fa488427cf', '2017-12-11', '2017-12-11 10:16:08', 1, '187.106.155.35', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'CoelhoCoelhudo', 'Renan', 'Shimada'),
(3, '4155b43171637a5edd4a737e2f94ec2f48a5e345', 'lucascastro1910@hotmail.com', '6e94450d7432e75baccf087a001b1cc29685dbba', '2017-12-11', '2017-12-11 10:22:27', 1, '177.204.243.57', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'lucas', 'lucas', 'dias'),
(4, 'b93f03b812743a9c539280c1435f5a3f5fb7bc48', 'claracoslana@Hotmail.com', '0a674abb02558ccc2bbb688e7b523b9e9822b677', '2017-12-11', '2017-12-11 10:28:53', 1, '179.236.105.222', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(5, 'ad4c5728322d3286a441e2c70dbc0905ed49f31e', 'Rafaelgomesbfreitas@hotmail.com', '3f1970df834239fe2d4fbe151741bc1af1e4afc3', '2017-12-11', '2017-12-11 10:31:35', 1, '186.212.185.69', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(6, 'ecbd6b9516ebd5f5247a00d1b274842ffef6226a', 'demacialog@gmail.com', '181161b6e9b653b8f2eeea326325754fc949d3e0', '2017-12-11', '2017-12-11 10:31:41', 1, '177.3.221.60', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(7, 'b43f06fb3c16068a5c864574a9ff01159e6ac320', 'luan33cz@hotmail.com', '1a61216b0615e41d8efc71214ada1ed267706ec5', '2017-12-11', '2017-12-11 10:32:25', 1, '177.22.242.165', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(8, '96a059e5df20e4d0549e5d68e0f79d661ea532d1', 'blackcayde@gmail.com', 'a5e9ec6a7ce737b53e7b73143b8bda6ff03cd30b', '2017-12-11', '2017-12-11 10:32:27', 1, '187.2.29.226', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(9, '999b4e48079a5def928100d63e7b4bbab5bf28fe', 'davi210800@gmail.com', '670536fe450f40f67ee63792c2d3bc884a81438d', '2017-12-11', '2017-12-11 12:35:49', 1, '177.23.202.81', 0, '2017-12-11 00:00:00', '2018-12-11', 1, 'ArslanSenki', 'Davi', 'Jorge'),
(10, 'c4ca7a6aaafb223d17c1730ec412691f641cf858', 'ibanned.star@gmail.com', '98a3950bbdc9aad0aad198dae1aaeafadd79f1ba', '2017-12-11', '2017-12-11 10:47:12', 1, '168.232.240.34', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'ironic321', 'Igor', 'Santos'),
(11, '5a9a6de8b1dad492ef83ef56aaeb5fd0a8bddf5c', 'orochinagatinho@gmail.com', 'f68251d80a474fb30508ff6074cdad6039d24df9', '2017-12-11', '2017-12-11 10:48:31', 1, '179.54.76.205', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'EroOtaku', 'Jean', 'Pierre'),
(12, '7a52e52305144e029dee1bad3fd5bd17352c5937', 'viniciuspretao@hotmail.com', '2d39db2a64febc5ff7da3f5064abf842421d449d', '2017-12-11', '2017-12-11 10:55:49', 1, '187.78.27.104', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(13, 'b917a6cd9d64197453e078f7d8f371ccbaa2dffc', 'bloggerandrealr@gmail.com', '1316fda151b299f9c247de49d126bb0e6e60cae9', '2017-12-11', '2017-12-11 11:09:16', 1, '200.181.189.90', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'DrugDrealer', 'Andre', 'Luiz'),
(14, 'b66a36c2d37c1a78d86afade3e81252072f6ebaf', 'vagner9823344@gmail.com', 'd4beb0601fc806a5736bb6ea23ddad67f1a9c2e1', '2017-12-11', '2017-12-11 11:11:40', 1, '187.38.68.253', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'vagner', 'vagner', 'oliveira'),
(15, 'da01edd4f165bfffa9dd8a73ee2a264b0b83d10b', 'julureroti@c1oramn.com', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', '2017-12-11', '2017-12-11 11:12:56', 1, '191.5.112.8', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(16, 'bdc6a1bc5f920329f6eaddb12f71d0479b105b1b', 'johnfantin@outlook.com', '1bb1083dbd2070a53003f427e43d0be607833578', '2017-12-11', '2017-12-11 11:13:33', 1, '201.21.39.103', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Fantin', 'John', 'Fantin'),
(17, 'd31ac668a2c7988a2a05f6a99a5fec9e345f9d42', 'kawann_leocadio@hotmail.com', '28f7fde4c0ae8badc391b5c71819ff59f8444724', '2017-12-11', '2017-12-11 11:14:11', 1, '138.97.184.6', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(18, 'fb9541cd71805493a917352fbb8269becf76beaa', 'adrielfantazini@gmail.com', '323140560625034440981844cb5a3ae3871d01e0', '2017-12-11', '2017-12-11 11:17:59', 1, '186.223.205.44', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'yvngrich', 'Adriel ', 'Rodrigues'),
(19, '67bbf6790ebb7d4d111bd438da6e0cb081866f8c', 'luccs.freire.298@gmail.com', 'b42e1f21e2f85791b3f47ba1f354e14129b40ab2', '2017-12-11', '2017-12-11 11:19:49', 1, '187.86.245.14', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'krayden', 'Lucas ', 'Freire'),
(20, 'f4d7f08638fc4f2817a4a9ae7ce4871357c53443', 'contatomarcosplays@hotmail.com', 'eb30aed5701adddc65579aac3ee2647a5f20c02c', '2017-12-11', '2017-12-11 13:58:07', 1, '177.41.233.37', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(21, '385a756e6e56e76173f13b41616f6dca4863088c', 'Daniel_senpai1999@hotmail.com', '0eab63506ca19b560d869b8b49ad2fcee03baf1f', '2017-12-11', '2017-12-11 11:34:04', 1, '177.192.254.60', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Shikamadoshi', 'Oliveira', 'Daniel'),
(22, '35f768b3c0de46fd4006ee175db774c7b1fe8225', 'danielbrushelas@gmail.com', 'f3650ce6261cc7463ce8ce69bad65eef4a739d57', '2017-12-11', '2017-12-11 11:35:15', 1, '201.0.253.164', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(23, '6c4253fae0adb017b2d9655561b0236735a8cbc3', 'williambriam553@gmail.com', '7b3de08e858cf4b2069a04990cf6574916cc9b41', '2017-12-11', '2017-12-11 11:37:27', 1, '177.13.236.29', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'wilorder', 'william brian', 'ruas'),
(24, 'bef9531638f597de17a83085a4c611e48f1a3931', 'felipebiersack361@gmai.com', 'f36613434d4b8739afacfd4866200c6f84307e7d', '2017-12-11', '2017-12-11 11:38:02', 1, '187.40.160.142', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Bersack', 'Felipe', 'Biersack'),
(25, 'a92a405cd5600c17f7bc9f4244a8dfa47b046a84', 'felipekateca@hotmail.com', 'ccc23749709e4af90c40074f56fcab626781a930', '2017-12-11', '2017-12-11 11:46:41', 1, '177.98.168.222', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(26, '560fd289f6c8f6102690a95d6ee08351aec89f4c', 'lorraynefs8@outlook.com', '169ca32d6899e62467f182d6648968b9ee9c9655', '2017-12-11', '2017-12-11 12:00:18', 1, '177.98.150.194', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(27, '0ffb504a2688135943186861abff596a8fc0f86e', 'murillo_bertoni@hotmail.com', '0df884b61502e9a1e71a8a300a4ab0862ecb89c3', '2017-12-11', '2017-12-11 12:03:10', 1, '179.127.111.3', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(28, '436fd5ad13968edffd03a6d246a9321b5a8f7c3e', 'idkevyn@hotmail.com', 'ed619e22a75321c6599270a55b71e8879d5ac14a', '2017-12-11', '2017-12-11 12:14:10', 1, '45.70.215.0', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Kei_Kurono', 'Kevyn', 'Araujo'),
(29, '14911302057bfd5dcf06e35eb5388a1fe54465fa', 'gabriel172012@hotmail.com', '435424c144422bd43f30c7be4fb243b1134af863', '2017-12-11', '2017-12-11 12:14:19', 1, '177.189.157.66', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Kami', 'Davi', 'Gabriel'),
(30, '02946cacf2164bbbe0f656f8388489f33a0a78d1', 'iglesiabarbara@live.com', 'fb7f7f4f40260ee0dae8af3b8a8a621669d63bcb', '2017-12-11', '2017-12-11 12:14:53', 1, '191.189.20.113', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(31, 'f1f28e2f520c4c27aa8c81ef6898129ef33c7844', 'bielrosa15@gmail.com', '33f16479139ba6aa9906fe63422b773036ad2559', '2017-12-11', '2017-12-11 12:37:01', 1, '177.52.29.46', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(32, 'ea95ceeb6ea86d5dbebdfa98b91a6e9f1dd274b4', 'jean.piierre29@gmail.com', '551ad8beab7b0b45a8b3b8504194c6c50fa16f0b', '2017-12-11', '2017-12-11 12:37:57', 1, '187.2.147.70', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'jeanzin20', 'Jean', 'Pierre'),
(33, '4ec5b794602d2ebd0c992f28692d25b3835c7489', 'cocopretos@gmail.com', 'dfa6f7925546330829f53f34d58a78d92afa9e1a', '2017-12-11', '2017-12-11 12:40:22', 1, '131.0.57.234', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(34, 'fc2b209f88bcedb45e9cef117248be5381e4dd0f', 'nbvvvcx@sdggl.com', 'c731d7ca3ae93fa019835d218bca0e34ff9dda19', '2017-12-11', '2017-12-11 12:56:25', 1, '189.82.212.162', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(35, 'd98253025230e007ad0108e903d068a55241b8ea', 'thiago7mm@gmail.com', '0b66e16e447483ac005a5d2d7877aebe66d3592c', '2017-12-11', '2017-12-11 12:58:02', 1, '187.37.17.163', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(36, '785fe4ad1b63164c735da769c21eef15230bb8a2', 'vitor.fialho4@gmail.com', '54cabc80b253d0dbabd17b484a77aba97024289e', '2017-12-11', '2017-12-11 12:59:30', 1, '186.223.201.104', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Yacchan', 'Vitor', 'Fialho'),
(37, '0d93902531c7ce1ae2f2f249a0e53143050552b0', 'gabriellikeas2020@gmail.com', '13e4cb10dcb9628d675043a2cd975543a7b23d83', '2017-12-11', '2017-12-11 13:00:15', 1, '138.185.50.118', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(38, '7352b1b585ee4f75cf2292527bddc5bb5519b591', 'Santiagobianca99@gmail.com', 'eea1e07ea151b22e7661b56923c09f5741556784', '2017-12-11', '2017-12-11 13:01:01', 1, '179.55.37.5', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(39, 'f43a038b4dc2620ed2498b0fc73e88c8774cbfdc', 'junior.ferreira155919@gmail.com', '206b30b74c0bfa04d62713e03f8d54deb0071e26', '2017-12-11', '2017-12-11 13:02:20', 1, '177.136.177.22', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'JrJunior', 'Junior', 'Ferreira'),
(40, '2173c4f936a6059bfe1da11b5fcd8ea984bcd0a3', 'lexn.b@outlook.com', '1a92cdf23c5fdf260919b6451fcec52eacc76870', '2017-12-11', '2017-12-11 13:04:49', 1, '170.84.159.242', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(41, 'e566cab36c0720d71bc62ecf709236db618ed40e', 'Draven.bigode@Outlook.com.br', '0f53074d22d6a4385bc368a4bc136e96fb85bfa5', '2017-12-11', '2017-12-11 13:16:20', 1, '177.41.2.72', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(42, '7ecdad5c7e4cdf0abb3acee9924990b2943a68ca', 'drksthefool@gmail.com', '00f88aff904a018d3a61df608978e856ff8108c5', '2017-12-11', '2017-12-11 13:20:22', 1, '189.54.61.169', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(43, '8ba1d910f1fce5db18948396677202ab4b4a718d', 'erick_lu90@hotmail.com', '89517afac850b6bdfcf2926057c3b3e9885debd4', '2017-12-11', '2017-12-11 13:24:57', 1, '179.232.24.25', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(44, '0afea1364c6b53c6ac05c7288393b450fa2dbcbc', 'sara.melo12@hotmail.com', '6b0d31c0d563223024da45691584643ac78c96e8', '2017-12-11', '2017-12-11 13:26:25', 0, '138.219.144.157', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(45, '571003b4984a6045fa89bd2a311db17f379a0056', 'gravity.darko@gmail.com', 'b7ac2360bbc68e94f5d28e0c0ef1ceb759df2524', '2017-12-11', '2017-12-11 13:26:50', 1, '138.219.144.157', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'darkogravity', 'Sara', 'Melo'),
(46, '4319490cd02c3237977fec827bc9ff184e8d3905', 'monalisacerbar@outlook.com', '99193349a32a718dc1850cae872b4f7aae228435', '2017-12-11', '2017-12-11 15:50:14', 1, '179.215.235.245', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'jshatake', 'Monalisa', 'Barbosa'),
(47, '7d48966c79e3008f9ad324f32d82df727f721159', 'guilherme.gabriels@gmail.com', 'e0232e0e9ab4b8f00b2d78f2b0c5419ab8840023', '2017-12-11', '2017-12-11 14:32:01', 1, '191.241.36.238', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Gui', 'Guilherme', 'Gabriel'),
(48, 'fadd87f5fa4beb24cc98f690db55cc06d1bb70f9', 'luannwgamershow@gmail.com', '35ba65b675cb77e7efe69285c336f73bec341007', '2017-12-11', '2017-12-11 14:33:14', 1, '177.156.114.234', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'P I X E  L', 'Luan', 'M.'),
(49, '23581e2170002b286b5712e8cb928c996277b373', 'gabdaordem@gmail.com', '9e4f7eb4865f94d459c419d3a3d7025f03bfd778', '2017-12-11', '2017-12-11 15:22:34', 1, '201.47.243.198', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Gintoki', 'Gabriel', 'Weber'),
(50, 'b3fcbd644e9385bc6f0e363479f67d22d9d9d198', 'mrs.lawliet10@gmail.com', '735f55c51d965a5a9ffd24660b89a8a3d15929ef', '2017-12-11', '2017-12-11 15:05:05', 1, '168.194.13.62', 0, '2017-12-11 00:00:00', '2018-12-11', 0, '', '', ''),
(51, '34b95b5f7dbd25cabd9b0745c392e19940ceee00', 'jgpdc.games@gmail.com', 'b0ca8d6327d77d41ad4c325a3a2202a66060ed4b', '2017-12-11', '2017-12-11 15:27:11', 1, '191.242.152.205', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Sae', 'João', 'Castro'),
(52, '233ea310621cfc5a11753bcec64f2c7933e8b9e4', 'CHIAPPETONNE@GMAIL.COM', 'ba66a0ad2cd47e0808824f24a0fc3e622c006437', '2017-12-11', '2017-12-11 15:49:24', 1, '177.129.208.58', 0, '2017-12-11 00:00:00', '2018-12-11', 0, 'Iago Kun', 'Iago', 'Chiappetta'),
(53, 'e1f343f5d8041587da3fb2889b77a99c6393a963', 'xande@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2018-03-21', '2018-03-21 12:21:36', 0, '179.252.242.69', 0, '2018-03-21 00:00:00', '2018-04-20', 0, '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela netflix_videos
--

CREATE TABLE netflix_videos (
  id serial,
  idserie varchar(255) NOT NULL,
  views varchar(255) NOT NULL,
  nome text NOT NULL,
  ep text NOT NULL,
  desct text NOT NULL,
  video text NOT NULL
) ;

--
-- Extraindo dados da tabela netflix_videos
--

INSERT INTO netflix_videos (id, idserie, views, nome, ep, desct, video) VALUES
(1, '1', '39', '', '01', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2001.mp4'),
(2, '1', '11', '', '02', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2002.mp4'),
(3, '1', '7', '', '03', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2003.mp4'),
(4, '1', '2', '', '04', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2004.mp4'),
(5, '1', '1', '', '05', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2005.mp4'),
(6, '1', '5', '', '06', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2006.mp4'),
(7, '1', '1', '', '07', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2007.mp4'),
(8, '1', '1', '', '08', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2008.mp4'),
(9, '1', '3', '', '09', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2009.mp4'),
(10, '1', '1', '', '10', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2010.mp4'),
(11, '1', '1', '', '11', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2011.mp4'),
(12, '1', '3', '', '12', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2012.mp4'),
(13, '2', '4', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=c5c14134cf6da894&autoplay=true'),
(14, '2', '2', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=d0cc882fb4642add'),
(15, '2', '1', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=11eafa6993a673d8'),
(16, '2', '1', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=8327362d0cc55af7'),
(17, '2', '2', '', '05', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-5'),
(18, '2', '1', '', '06', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-6'),
(19, '2', '4', '', '07', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-7'),
(20, '2', '0', '', '08', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-8'),
(21, '2', '0', '', '09', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-9'),
(22, '2', '0', '', '10', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-10'),
(23, '2', '1', '', '11', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-11'),
(24, '2', '1', '', '12', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-12'),
(25, '2', '0', '', '13', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-13'),
(26, '2', '6', '', '14', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-01'),
(27, '3', '8', '', '01', '', 'https://www.blogger.com/video-play.mp4?contentId=63e92a9ed41dd87f'),
(28, '3', '2', '', '02', '', 'https://www.blogger.com/video-play.mp4?contentId=d359b90c35bd2a4'),
(29, '3', '0', '', '03', '', 'https://www.blogger.com/video-play.mp4?contentId=1ff0e3db29119575'),
(30, '3', '2', '', '04', '', 'https://www.blogger.com/video-play.mp4?contentId=993c954ed01c702a'),
(31, '3', '1', '', '05', '', 'https://www.blogger.com/video-play.mp4?contentId=2265be426d0f7f74'),
(32, '3', '3', '', '06', '', 'https://www.blogger.com/video-play.mp4?contentId=58e8fbd9138889ef'),
(33, '3', '0', '', '07', '', 'https://www.blogger.com/video-play.mp4?contentId=f9a2c587925cdd3d'),
(34, '3', '0', '', '08', '', 'https://www.blogger.com/video-play.mp4?contentId=a548717201069788'),
(35, '3', '0', '', '09', '', 'https://www.blogger.com/video-play.mp4?contentId=522627933acc6fef'),
(36, '3', '0', '', '10', '', 'https://www.blogger.com/video-play.mp4?contentId=a485cf66cd41a314'),
(37, '3', '0', '', '11', '', 'https://www.blogger.com/video-play.mp4?contentId=3c0444dc58b315f8'),
(38, '3', '0', '', '12', '', 'https://www.blogger.com/video-play.mp4?contentId=2f949e3079a45fa6'),
(39, '3', '0', '', '13', '', 'https://www.blogger.com/video-play.mp4?contentId=863a2d96a8a52525'),
(40, '3', '2', '', '14', '', 'https://www.blogger.com/video-play.mp4?contentId=ae37c730ebb7a98f'),
(41, '3', '2', '', '15', '', 'https://www.blogger.com/video-play.mp4?contentId=1b8cb5952a1b922c'),
(42, '3', '0', '', '16', '', 'https://www.blogger.com/video-play.mp4?contentId=492962958066ca3'),
(43, '3', '0', '', '17', '', 'https://www.blogger.com/video-play.mp4?contentId=7f942452d8cd5ed3'),
(44, '3', '0', '', '18', '', 'https://www.blogger.com/video-play.mp4?contentId=3d634b8ccaefe520'),
(45, '3', '0', '', '19', '', 'https://www.blogger.com/video-play.mp4?contentId=2f7026a8e1fc8253'),
(46, '3', '0', '', '20', '', 'https://www.blogger.com/video-play.mp4?contentId=4fd0bd04139528a3'),
(47, '3', '0', '', '21', '', 'https://www.blogger.com/video-play.mp4?contentId=817c2b4fce33d899'),
(48, '3', '0', '', '22', '', 'https://www.blogger.com/video-play.mp4?contentId=3f10fbdced221c7f'),
(49, '3', '1', '', '23', '', 'https://www.blogger.com/video-play.mp4?contentId=81321dc72de8f3f'),
(50, '3', '0', '', '24', '', 'https://www.blogger.com/video-play.mp4?contentId=43d96d0aa2c2d7f4'),
(51, '3', '15', '', '25', '', 'https://www.blogger.com/video-play.mp4?contentId=e4414756f21533ed'),
(52, '4', '3', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=d8ebe79cc0564948&autoplay=true'),
(53, '4', '1', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=9e80a20fa40e978d&autoplay=true'),
(54, '4', '1', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=42881380039458bb&autoplay=true'),
(55, '4', '2', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=2157a3f96d697617&autoplay=true'),
(56, '4', '2', '', '05', '', 'http://www.blogger.com/video-play.mp4?contentId=a7919fbcb4e6f552&autoplay=true'),
(57, '4', '3', '', '06', '', 'http://www.blogger.com/video-play.mp4?contentId=edf751162552a47e&autoplay=true'),
(58, '4', '2', '', '07', '', 'http://www.blogger.com/video-play.mp4?contentId=24cd87de6973ab18&autoplay=true'),
(59, '4', '2', '', '08', '', 'http://www.blogger.com/video-play.mp4?contentId=c848dace07e1024a&autoplay=true'),
(60, '4', '1', '', '09', '', 'http://www.blogger.com/video-play.mp4?contentId=31eb95232896fbbc&autoplay=true'),
(61, '4', '1', '', '10', '', 'http://www.blogger.com/video-play.mp4?contentId=1297d1066e7b44c8&autoplay=true'),
(62, '4', '1', '', '11', '', 'http://www.blogger.com/video-play.mp4?contentId=c092eeff38853c23&autoplay=true'),
(63, '4', '5', '', '12', '', 'http://www.blogger.com/video-play.mp4?contentId=2fb45e797bc23c3f&autoplay=true'),
(64, '5', '18', '', '01', '', 'https://www.blogger.com/video-play.mp4?contentId=f54f807c54e7f228'),
(65, '5', '1', '', '02', '', 'https://www.blogger.com/video-play.mp4?contentId=ec7aac57cd0159dd'),
(66, '5', '2', '', '03', '', 'https://www.blogger.com/video-play.mp4?contentId=c5bafddbe538688e'),
(67, '5', '1', '', '04', '', 'https://www.blogger.com/video-play.mp4?contentId=ba77b241e3e07b87'),
(68, '5', '2', '', '05', '', 'https://www.blogger.com/video-play.mp4?contentId=a41809c466e7eb00'),
(69, '5', '3', '', '06', '', 'https://www.blogger.com/video-play.mp4?contentId=3cc4abab49e2575c'),
(70, '5', '1', '', '07', '', 'https://www.blogger.com/video-play.mp4?contentId=4af3c827c061d79d'),
(71, '5', '2', '', '08', '', 'https://www.blogger.com/video-play.mp4?contentId=658e06578fc771ae'),
(72, '5', '1', '', '09', '', 'https://www.blogger.com/video-play.mp4?contentId=495483eda9e113fc'),
(73, '5', '3', '', '10', '', 'https://www.blogger.com/video-play.mp4?contentId=e25107515814d07f'),
(74, '5', '2', '', '11', '', 'https://www.blogger.com/video-play.mp4?contentId=43ec562fbec31cf5'),
(75, '5', '0', '', '12', '', 'https://www.blogger.com/video-play.mp4?contentId=51d6ae3ffe566ea2'),
(76, '6', '7', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=3c384966caf6d862&autoplay=true'),
(77, '6', '0', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=275e354f3ff27dd4&autoplay=true'),
(78, '6', '0', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=13c1009ca9781298&autoplay=true'),
(79, '6', '0', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=c77a6ac85087213d&autoplay=true'),
(80, '6', '0', '', '05', '', 'http://www.blogger.com/video-play.mp4?contentId=41a615db15e335d0&autoplay=true'),
(81, '6', '0', '', '06', '', 'http://www.blogger.com/video-play.mp4?contentId=b55a2c225f6b6bf2&autoplay=true'),
(82, '6', '0', '', '07', '', 'http://www.blogger.com/video-play.mp4?contentId=2f3003bd5c6846c6&autoplay=true'),
(83, '6', '0', '', '08', '', 'http://www.blogger.com/video-play.mp4?contentId=bec0753a37f1ed7&autoplay=true'),
(84, '6', '0', '', '09', '', 'http://www.blogger.com/video-play.mp4?contentId=067f54921ba12ab9&autoplay=true'),
(85, '7', '9', '', '01', '', 'https://www.blogger.com/video-play.mp4?contentId=78579501adc66276'),
(89, '9', '25', '', '01', '', 'http://s.vstreaming.net/animes/blackclover/01-leg-720p.mp4'),
(90, '10', '21', '', '01', '', 'http://s.vstreaming.net/animes/boruto/01-leg-720p.mp4'),
(91, '11', '18', '', 'Completo', '', 'http://s.vstreaming.net/movies/koenokatachi-leg-720p.mp4'),
(92, '12', '7', '', 'Completo', '', 'http://s.vstreaming.net/movies/boruto-leg-720p.mp4'),
(93, '13', '14', '', 'Completo', '', 'http://s.vstreaming.net/movies/freeza-dub-720p.mp4'),
(94, '9', '2', '', '02', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_283929082099043_8747271604968357888_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=93195a05451d40667e1e3783638ae0d5&oe=5A273C24'),
(95, '9', '0', '', '03', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_517476665311548_2979386287447867392_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=1ea4759b93d527f1e1ec40ca7ebe78c7&oe=5A272D01'),
(96, '9', '1', '', '04', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_153771988692976_1454895217760010240_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=684ce78c6f9f093f3bb42bf452b5a76f&oe=5A27193F'),
(97, '9', '0', '', '05', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_495497300825350_84972479092621312_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=7c16f9d8a9a5bf1b2656aaf2ff2ef3b2&oe=5A2749C8'),
(98, '9', '1', '', '06', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1681026641965017_2799625817162776576_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=9ce95978e6cd614b9c70c207a0ccf0f8&oe=5A271760'),
(99, '9', '1', '', '07', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_374109553045363_5158432550594543616_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=9120b6a6713e0fd4275113da9e3df627&oe=5A274DD8'),
(100, '9', '8', '', '08', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_139915146660922_3828776947098320896_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=378efe6e64b30e86334699b4f1912dd3&oe=5A272AB0'),
(101, '14', '6', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=d2834ce31f7a6f4&autoplay=true'),
(102, '14', '1', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=db098c72f99fe9cb&autoplay=true'),
(103, '14', '0', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=81b63e5ffbf01462&autoplay=true'),
(104, '14', '0', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=3c006e9a3ae5f645&autoplay=true'),
(105, '14', '0', '', '05', '', 'http://www.blogger.com/video-play.mp4?contentId=ff385b5c437ea3e0&autoplay=true'),
(106, '14', '0', '', '06', '', 'http://www.blogger.com/video-play.mp4?contentId=8beaaa8c41be9f3&autoplay=true'),
(107, '14', '0', '', '07', '', 'http://www.blogger.com/video-play.mp4?contentId=3232602a480103d9&autoplay=true'),
(108, '14', '0', '', '08', '', 'http://www.blogger.com/video-play.mp4?contentId=4923380d73bd615a&autoplay=true'),
(109, '14', '0', '', '09', '', 'http://www.blogger.com/video-play.mp4?contentId=cc1d71e4c84fb88f&autoplay=true'),
(110, '14', '0', '', '10', '', 'http://www.blogger.com/video-play.mp4?contentId=24e13bf3bb96082b&autoplay=true'),
(111, '14', '0', '', '11', '', 'http://www.blogger.com/video-play.mp4?contentId=f8a9128ebf50ec60&autoplay=true'),
(112, '14', '2', '', '12', '', 'http://www.blogger.com/video-play.mp4?contentId=1ade82ffeccbab4c&autoplay=true'),
(113, '15', '27', '', '01', '', 'http://s.vstreaming.net/animes/anohana/01-leg-480p.mp4'),
(114, '15', '23', '', '02', '', 'http://s.vstreaming.net/animes/anohana/02-leg-480p.mp4'),
(115, '15', '20', '', '03', '', 'http://s.vstreaming.net/animes/anohana/03-leg-480p.mp4'),
(116, '15', '20', '', '04', '', 'http://s.vstreaming.net/animes/anohana/04-leg-480p.mp4'),
(117, '15', '20', '', '05', '', 'http://s.vstreaming.net/animes/anohana/05-leg-480p.mp4'),
(118, '15', '20', '', '06', '', 'http://s.vstreaming.net/animes/anohana/06-leg-480p.mp4'),
(119, '15', '20', '', '07', '', 'http://s.vstreaming.net/animes/anohana/07-leg-480p.mp4'),
(120, '15', '20', '', '08', '', 'http://s.vstreaming.net/animes/anohana/08-leg-480p.mp4'),
(121, '15', '20', '', '09', '', 'http://s.vstreaming.net/animes/anohana/09-leg-480p.mp4'),
(122, '15', '20', '', '10', '', 'http://s.vstreaming.net/animes/anohana/10-leg-480p.mp4'),
(123, '15', '20', '', '11', '', 'http://s.vstreaming.net/animes/anohana/11-leg-480p.mp4'),
(124, '16', '29', '', '01', '', 'http://s.vstreaming.net/animes/bokunohero/01-leg-720p.mp4'),
(125, '16', '23', '', '02', '', 'http://s.vstreaming.net/animes/bokunohero/02-leg-720p.mp4'),
(126, '16', '20', '', '03', '', 'http://s.vstreaming.net/animes/bokunohero/03-leg-720p.mp4'),
(127, '16', '20', '', '04', '', 'http://s.vstreaming.net/animes/bokunohero/04-leg-720p.mp4'),
(128, '16', '20', '', '05', '', 'http://s.vstreaming.net/animes/bokunohero/05-leg-720p.mp4'),
(129, '16', '20', '', '06', '', 'http://s.vstreaming.net/animes/bokunohero/06-leg-720p.mp4'),
(130, '16', '20', '', '07', '', 'http://s.vstreaming.net/animes/bokunohero/07-leg-720p.mp4'),
(131, '16', '20', '', '08', '', 'http://s.vstreaming.net/animes/bokunohero/08-leg-720p.mp4'),
(132, '16', '20', '', '09', '', 'http://s.vstreaming.net/animes/bokunohero/09-leg-720p.mp4'),
(133, '16', '20', '', '10', '', 'http://s.vstreaming.net/animes/bokunohero/10-leg-720p.mp4'),
(134, '16', '20', '', '11', '', 'http://s.vstreaming.net/animes/bokunohero/11-leg-720p.mp4'),
(135, '16', '20', '', '12', '', 'http://s.vstreaming.net/animes/bokunohero/12-leg-720p.mp4'),
(136, '16', '20', '', '13', '', 'http://s.vstreaming.net/animes/bokunohero/13-leg-720p.mp4'),
(137, '17', '48', '', '01', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/01-leg-720p.mp4'),
(138, '17', '30', '', '02', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/02-leg-720p.mp4'),
(139, '17', '21', '', '03', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/03-leg-720p.mp4'),
(140, '17', '20', '', '04', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/04-leg-720p.mp4'),
(141, '17', '20', '', '05', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/05-leg-720p.mp4'),
(142, '17', '20', '', '06', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/06-leg-720p.mp4'),
(143, '17', '20', '', '07', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/07-leg-720p.mp4'),
(144, '17', '20', '', '08', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/08-leg-720p.mp4'),
(145, '17', '20', '', '09', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/09-leg-720p.mp4'),
(146, '17', '20', '', '10', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/10-leg-720p.mp4'),
(147, '17', '20', '', '11', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/11-leg-720p.mp4'),
(148, '17', '20', '', '12', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/12-leg-720p.mp4'),
(149, '17', '20', '', '13', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/13-leg-720p.mp4'),
(150, '17', '20', '', '14', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/14-leg-720p.mp4'),
(151, '17', '20', '', '15', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/15-leg-720p.mp4'),
(152, '17', '20', '', '16', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/16-leg-720p.mp4'),
(153, '17', '20', '', '17', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/17-leg-720p.mp4'),
(154, '17', '20', '', '18', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/18-leg-720p.mp4'),
(155, '17', '20', '', '19', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/19-leg-720p.mp4'),
(156, '17', '20', '', '20', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/20-leg-720p.mp4'),
(157, '17', '20', '', '21', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/21-leg-720p.mp4'),
(158, '17', '21', '', '22', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/22-leg-720p.mp4'),
(159, '17', '20', '', '23', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/23-leg-720p.mp4'),
(160, '17', '20', '', '24', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/24-leg-720p.mp4'),
(161, '17', '20', '', '25', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/25-leg-720p.mp4'),
(162, '19', '25', '', '01', '', 'https://www.googleapis.com/drive/v3/files/1QSmcZMn9WO_REyQCwg4trlTB0lLTeJD1uw?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(163, '19', '11', '', '02', '', 'https://www.googleapis.com/drive/v3/files/1nycVFE9GjM4HFCUi6BkkTZYEKleL0pTcgw?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(164, '19', '1', '', '03', '', 'https://www.googleapis.com/drive/v3/files/1WejF_MyJFVAOyqGYFaBfhYUhdWLbPvfEkg?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(165, '19', '1', '', '04', '', 'https://www.googleapis.com/drive/v3/files/1iGuuvk1R1FRRa4YCoh0-fyTQJZGBDvsJdw?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(166, '19', '1', '', '05', '', 'https://www.googleapis.com/drive/v3/files/1MNr-a5hiXZiTmO_9uMdQd4BDxwHMYP5Q3w?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(167, '19', '3', '', '06', '', 'https://www.googleapis.com/drive/v3/files/1r3iV7Ncb4pNVOUOiN5z4sL2k3ITp5s57PQ?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(168, '19', '1', '', '07', '', 'https://www.googleapis.com/drive/v3/files/1K22n5VDT_k0-YmomaQ864e6FmGBgQCr4fA?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(169, '19', '1', '', '08', '', 'https://www.googleapis.com/drive/v3/files/1MLKX9dtZitnoEfcmvXaxz3bZtnJVwP7knQ?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(170, '19', '1', '', '09', '', 'https://www.googleapis.com/drive/v3/files/1m3XAg8qHytBW-BBURYSV3q95z9G1LNsoEg?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(171, '19', '1', '', '10', '', 'https://www.googleapis.com/drive/v3/files/13oCCB9KDU8UqEk4BFZJLjeU7a3eKlCqpMQ?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(172, '19', '5', '', '11', '', 'https://www.googleapis.com/drive/v3/files/1MDnfECmMsC3YODj3prbrtKTizR2clKdiOQ?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(173, '20', '5', '', '01', '', 'https://us1-sv-4-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=074b12439f62dab2&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7e&ms=nxu&mv=m&pl=48&ttl=transient&ei=mHEtWrmxFYvAqwXK3LbABQ&driveid=dnRYRmZFSkpOUU5zZHZYQVUwSUpNMENCWFhad2k1ZDVYOGgzeHpybWF5MD0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1486931869750155&mt=1512927565&ip=2604:a880:800:10::128:e001&ck=zq9RIdNlGUs&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNXN6bjdlLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512931240&cp=QVNGVEpfUFJSQVhOOnh2ME9HZEppSFJx&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=250DFA6BB6A7DDB0B42F31087CB0CD70DB3E22C9.5780969E1DA1E428656830C59D5601D9802E94A1&key=ck2&apps=animesync.tv'),
(174, '20', '2', '', '02', '', 'https://us1-sv-3-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=99f15eafde8dde6d&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n67&ms=nxu&mv=u&pl=48&ttl=transient&ei=AHMtWomMGdboqAXzzII4&driveid=MDhIU21IaEM2QmV4V3kwakwzTStKWUhQR002U1B4NzVqdDlsUlJsYTk3OD0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1486930919743933&mt=1512927654&ip=2604:a880:800:10::128:e001&ck=fkkVUzjUEws&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bjY3Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512931600&cp=QVNGVEpfUFZOQVhOOmRwalNXdmZSRnRx&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=5792CEACAF0D16EA5A891C4723B93AB51A4C6BEC.AFB694F4DA27B528F777864858C2A6F76185C715&key=ck2&apps=animesync.tv'),
(175, '20', '1', '', '03', '', 'https://us1-sv-16-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=685ed812882be60f&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzk&ms=nxu&mv=m&pl=48&ttl=transient&ei=ZnMtWo-hDYj1qAXJ77XgBw&driveid=ZXlrN01KdTVrNjJ3dW4xVk5iVkZ0L2hJWXRMZmRVaTZueHZTY2ViTzIwbz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1486931757145220&mt=1512927982&ip=2604:a880:800:10::128:e001&ck=9yaJkyNFImc&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNWw2bnprLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512931702&cp=QVNGVEpfUFdOQ1hOOjlkekdudUxDSmph&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=672025CB6D629977659EBDD09070EC15AA034A5E.6BD909815E4D835BC2CAB4D5479B90F8C2987214&key=ck2&apps=animesync.tv'),
(176, '20', '0', '', '04', '', 'https://us1-sv-11-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=7f798ba84f30f76e&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsr&ms=nxu&mv=m&pl=48&ttl=transient&ei=qXMtWv_-NNHvqQWBi73oDg&driveid=eDlFUDNLS3lVbk5kYVJxd3oyQjUzZjZBZVVBV29qQm4wTGVFNWFubTJRRT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1486934626118469&mt=1512928045&ip=2604:a880:800:10::128:e001&ck=vRk9FXhxqww&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bnNyLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512931769&cp=QVNGVEpfUFdUSlhOOnRXajhJWm11cnR1&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=93CBDC533D1724A9FB909511FA4AC94DACE92923.2CF563579594F42EE1327B9DCD8B8F0657347EDB&key=ck2&apps=animesync.tv'),
(177, '20', '4', '', '05', '', 'https://us1-sv-24-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=6181b71e2130e958&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5sznle&ms=nxu&mv=m&pl=48&ttl=transient&ei=_nMtWsngA4j1qAXJ77XgBw&driveid=K3FMM0EzdTlmK0ptUjdwSGw1eEdpZXZrekhOZGZ0REorYzNNMFFEYnViST0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1486933146740005&mt=1512928175&ip=2604:a880:800:10::128:e001&ck=2HZ5HHka1Ug&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNXN6bmxlLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512931854&cp=QVNGVEpfUFhTRVhOOjJNWTRMSWt4NFJl&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=199C15E5D0EBC751F7EE8A255D2F0062F3307B36.4AA4297A4DC187F9678986644C4B9508E3F91060&key=ck2&apps=animesync.tv'),
(178, '20', '1', '', '06', '', 'https://r6---sn-gpv7ener.googlevideo.com/videoplayback?requiressl=yes&id=8ae20a77ad738724&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1515076111&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=2028BBD269D6F334819EC5C8EFC82EA32E276BEE.37BA49DC13A1F2A9E63C498E15F4BF309375AED8&key=cms1&cms_redirect=yes&mip=170.83.250.180&mm=30&mn=sn-gpv7ener&ms=nxu&mt=1512927654&mv=u&pl=24&sc=yes'),
(179, '20', '0', '', '07', '', 'https://us1-sv-8-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=e8df365d804f7c5b&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsd&ms=nxu&mv=m&pl=48&ttl=transient&ei=wnUtWoKCEcaRqwWBmr7IAQ&driveid=c0xyTDErT0RKU0JpaHdaeUVJa1B1SDFscktVZjFkQ2xUUE9kck1WQUkwQT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1487962946955075&mt=1512928646&ip=2604:a880:800:10::128:e001&ck=4c0HlPsRcbY&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNWw2bnNkLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512932306&cp=QVNGVEpfUVNOR1hOOjRoMUZrTHVPZHlX&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=B348BA84BFC2F4D3A78E5358F31ADF4E9519D6C5.E14A4A548D09720AD6F1F2F06F641D0935644F&key=ck2&apps=animesync.tv'),
(180, '20', '0', '', '08', '', 'https://us1-sv-2-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=7212440ada87df13&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7d&ms=nxu&mv=m&pl=48&ttl=transient&ei=4HUtWtfZEZDsqAWvporQBw&driveid=UHN4L2FGRkxBRWc5ZkFqbWdoSmR0bGpRR3lKS3dhU2xuUzBGK2o5U2dwST0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488577455416592&mt=1512928646&ip=2604:a880:800:10::128:e001&ck=xt1LYcE8ikU&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNXN6bjdkLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512932336&cp=QVNGVEpfUVNRR1hOOnZ5MkpYYkc3amhT&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=77D0D1A18FEEC1ED70D9EEC3EDF445B0293777A3.B3E275B086B2BAF141850CEB015A60449CAA40DF&key=ck2&apps=animesync.tv'),
(181, '20', '1', '', '09', '', 'https://us1-sv-1-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=fdda7ad232571321&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6ns6&ms=nxu&mv=m&pl=48&ttl=transient&ei=GHYtWs_rLsiMqwWc6K7gDg&driveid=c2pvYWhIYVVsaS9LL3NIVUtTd2NPeTlSNWZ5dnFzQTRGYmNLWG1pL3drTT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489170755441057&mt=1512928711&ip=2604:a880:800:10::128:e001&ck=utyIxPSGXTU&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNWw2bnM2Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512932392&cp=QVNGVEpfUVNXQ1hOOnN5eEd3VVFEWVFT&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=4F47E9DF8F4A0756931D0D504FF36565E9623F78.3A2F1D21D873B00C319076CA5C79968B742E9013&key=ck2&apps=animesync.tv'),
(182, '20', '0', '', '10', '', 'https://us1-sv-17-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=78fba2d9db1d602e&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nl6&ms=nxu&mv=m&pl=48&ttl=transient&ei=lnYtWuWMFNbZqAXshaD4Aw&driveid=Q1E2MWZTWm95T3JKN0p0MDNxdHVIR3RYbWJVZ2pyOUdGV0szN1NwV0JkMD0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489868646400878&mt=1512928822&ip=2604:a880:800:10::128:e001&ck=rgvzizNXUS8&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNWw2bmw2Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512932518&cp=QVNGVEpfUVVPSVhOOnBsdXhqd1JVVlA4&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=526D3615C7332CDC0CB46B98DF7394FE8CCAA90D.654F23E1E03C791D758682D1A356CD0D71844A47&key=ck2&apps=animesync.tv'),
(183, '20', '3', '', '11', '', 'https://us1-sv-16-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=1304ec4d1488a335&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzd&ms=nxu&mv=m&pl=48&ttl=transient&ei=vXYtWuLZLNemqQX8lIzICw&driveid=WVhpTDZVMjMxQWhwTHA5cVFucmw0MGsvVzAzeEx1cmdEa0lGUDVIb2puOD0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1490383426510723&mt=1512928891&ip=2604:a880:800:10::128:e001&ck=ez7ojBhFxyc&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNWw2bnpkLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512932558&cp=QVNGVEpfUVVTSVhOOmNlOG1rQ2xDeXZh&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=7E9CBAD304FF0F6275FFC095A85CC4A5EA5F1EBD.371E229398902944A7EB083709391E50F2DC20D7&key=ck2&apps=animesync.tv'),
(184, '20', '0', '', '12', '', 'https://us1-sv-21-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=94a041a5492dd236&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7k&ms=nxu&mv=m&pl=48&ttl=transient&ei=n3ctWvqmGdH2qQWeraC4Dg&driveid=R2RJeWxWL3pjeWRJZjJRY0k1REU0cE5CQVFZV0ppYjBLaUUrUG4reTU2UT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1490988764668889&mt=1512929006&ip=2604:a880:800:10::128:e001&ck=d8K2HU2P3R0&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNXN6bjdrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512932783&cp=QVNGVEpfUVdWRFhOOmI1SjJLWTNNNk8w&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=AD4E3CFAF37C49EF9AB44A65AB813B83304FFA99.A32E55738B52BC14F5D30AE24BF6D853D5FD383E&key=ck2&apps=animesync.tv'),
(185, '21', '7', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=2aadc10ddc3a42d8'),
(186, '21', '1', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=3f4410bba5c982de'),
(187, '21', '1', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=82e70baa1bdde03b'),
(188, '21', '2', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=b04f5dfe721b1ffb'),
(189, '21', '0', '', '05', '', 'http://www.blogger.com/video-play.mp4?contentId=acc0fe15bb52e41b'),
(190, '21', '0', '', '06', '', 'http://www.blogger.com/video-play.mp4?contentId=939608c36733e0a3'),
(191, '21', '0', '', '07', '', 'http://www.blogger.com/video-play.mp4?contentId=dcae77a738025201'),
(192, '21', '0', '', '08', '', 'http://www.blogger.com/video-play.mp4?contentId=77a76faeee55584b'),
(193, '21', '0', '', '09', '', 'http://www.blogger.com/video-play.mp4?contentId=ff6ae9973283e589'),
(194, '21', '0', '', '10', '', 'http://www.blogger.com/video-play.mp4?contentId=f495f35abaa4747b'),
(195, '21', '0', '', '11', '', 'http://www.blogger.com/video-play.mp4?contentId=519bedaa393764c2'),
(196, '21', '0', '', '12', '', 'http://www.blogger.com/video-play.mp4?contentId=5582036f8ea6675c'),
(197, '22', '4', '', '01', '', 'https://r4---sn-gpv7dn7e.googlevideo.com/videoplayback?id=ad603dfceef22bef&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7dn7e&ms=nxu&mv=m&pl=24&sc=yes&ei=nnwtWvOVGMiLqgXD34vQCQ&app=fife&mime=video/mp4&cnr=14&lmt=1511627028536418&mt=1512930323&ip=170.83.250.180&ipbits=8&expire=1512937662&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=7CCBD6E1F19C99AD72C1795B19741F122EE74ED1.0D9F99478256C4CF73C24966C33CC67A2DD3C629&key=ck2'),
(198, '22', '0', '', '02', '', 'https://r1---sn-gpv7eney.googlevideo.com/videoplayback?id=4ee44266772aefb0&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7eney&ms=nxu&mv=m&pl=24&sc=yes&ei=6H0tWteDENebqQWRqrjIDg&app=fife&mime=video/mp4&cnr=14&lmt=1511624751011919&mt=1512930565&ip=170.83.250.180&ipbits=8&expire=1512937992&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=6EA3CE54FEDF9CBBDDD4E5F335B98BB7B0153298.414DDBC455B8133374C128C80F6798159411DF87&key=ck2'),
(199, '22', '0', '', '03', '', 'https://r4---sn-gpv7enek.googlevideo.com/videoplayback?id=53bf03e60603ae48&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7enek&ms=nxu&mv=m&pl=24&sc=yes&ei=A34tWq_FJNLyqQWw96WACA&app=fife&mime=video/mp4&cnr=14&lmt=1511629624018477&mt=1512930751&ip=170.83.250.180&ipbits=8&expire=1512938019&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=2BD262B0747464D5E8C3C55E8C461A1DADAF51BB.85BB1175F046B7A9CFAF4E42C569DF559E125302&key=ck2'),
(200, '22', '0', '', '04', '', 'https://r3---sn-gpv7ener.googlevideo.com/videoplayback?id=c41672bf80972485&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7ener&ms=nxu&mv=m&pl=24&sc=yes&ei=G34tWt6bKtfwqAXexqCwBg&app=fife&mime=video/mp4&cnr=14&lmt=1511628860688101&mt=1512930751&ip=170.83.250.180&ipbits=8&expire=1512938043&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=73DDEF82CBD98DE0AF47532B66B8249F8B79C9DB.B0EBA9286596B26E54F9D53C55A59251D8949449&key=ck2'),
(201, '22', '0', '', '05', '', 'https://r5---sn-gpv7enez.googlevideo.com/videoplayback?id=444fe84b7c62ae59&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7enez&ms=nxu&mv=m&pl=24&sc=yes&ei=OX4tWoGgHdGO-gXmuaLwCA&app=fife&mime=video/mp4&cnr=14&lmt=1511632249474034&mt=1512930751&ip=170.83.250.180&ipbits=8&expire=1512938073&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=9A9297FA1161E015AC44FA01B28645C02FF2F158.3749A5B0D0044EBB053AE7AF3A4444D0C102091D&key=ck2'),
(202, '22', '0', '', '06', '', 'https://r2---sn-gpv7eney.googlevideo.com/videoplayback?id=635e2bf9088b9737&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7eney&ms=nxu&mv=m&pl=24&sc=yes&ei=aH4tWvC9KM7--AWr7o6IBg&app=fife&mime=video/mp4&cnr=14&lmt=1511626362500151&mt=1512930751&ip=170.83.250.180&ipbits=8&expire=1512938120&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=61AAD640CC5398FB78B9451F9E33343FAFEAD6D4.218E431D877C6B2449690B12CD04EA1B2C6E072B&key=ck2'),
(203, '22', '0', '', '07', '', 'https://r3---sn-gpv7enek.googlevideo.com/videoplayback?id=978edee04ebd706e&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7enek&ms=nxu&mv=m&pl=24&sc=yes&ei=h34tWozdCIv2qgX9vJLQCQ&app=fife&mime=video/mp4&cnr=14&lmt=1511632680318214&mt=1512930751&ip=170.83.250.180&ipbits=8&expire=1512938151&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=8DE932318154D060D2F38C415237A7263D013B17.01D7647FED8AADDCE9BA2AE249AC8A08DBFB14BE&key=ck2'),
(204, '22', '0', '', '08', '', 'https://r2---sn-gpv7dn7e.googlevideo.com/videoplayback?id=8fef7c09370cb149&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7dn7e&ms=nxu&mv=m&pl=24&sc=yes&ei=2H4tWr3sDIGgqwX5oJPoBA&app=fife&mime=video/mp4&cnr=14&lmt=1511629519908537&mt=1512930751&ip=170.83.250.180&ipbits=8&expire=1512938232&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=97AD0C8158C754CC651AF22E6F7267F47C34D2EF.588E9396375F2ECF7148B5C14E00C86AC503826C&key=ck2'),
(205, '22', '0', '', '09', '', 'https://r2---sn-gpv7eney.googlevideo.com/videoplayback?id=2cca60b53d1e95c3&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7eney&ms=nxu&mv=m&pl=24&sc=yes&ei=AX8tWquhEdHvqQWBi73oDg&app=fife&mime=video/mp4&cnr=14&lmt=1511626857883394&mt=1512931050&ip=170.83.250.180&ipbits=8&expire=1512938273&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=8A6238378DE0B1BC83DF2523B14E3FFCC481FEF5.3ECE3676D24F43CEA637691093F4065DDA199955&key=ck2'),
(206, '22', '0', '', '10', '', 'https://r5---sn-gpv7eney.googlevideo.com/videoplayback?id=09895dea3cf2a0b5&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7eney&ms=nxu&mv=m&pl=24&sc=yes&ei=Jn8tWqWsIdebqQWRqrjIDg&app=fife&mime=video/mp4&cnr=14&lmt=1511624789826159&mt=1512931050&ip=170.83.250.180&ipbits=8&expire=1512938310&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=03484D9F3BAFC7D2C3170148FEEA6C471048BA1E.8B022A5C7FC184F653775777C8F056DF20E8E823&key=ck2'),
(207, '22', '0', '', '11', '', 'https://r5---sn-gpv7enek.googlevideo.com/videoplayback?id=99050238b0a91c29&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7enek&ms=nxu&mv=m&pl=24&sc=yes&ei=Tn8tWtDhOIrm-wWEgpngAw&app=fife&mime=video/mp4&cnr=14&lmt=1511624811129380&mt=1512931050&ip=170.83.250.180&ipbits=8&expire=1512938351&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=619E5FF59819CE0FA1DF053619F0AAD9DBE910FA.6BB5C4A87E890711A53253566E1DFF4380BAC8CF&key=ck2'),
(208, '22', '0', '', '12', '', 'https://r5---sn-gpv7dn7l.googlevideo.com/videoplayback?id=7ce86702525908c3&itag=22&source=picasa&begin=0&requiressl=yes&mm=30&mn=sn-gpv7dn7l&ms=nxu&mv=m&pl=24&sc=yes&ei=cX8tWrisNcvLqAWYkproBQ&app=fife&mime=video/mp4&cnr=14&lmt=1511632219690958&mt=1512931108&ip=170.83.250.180&ipbits=8&expire=1512938385&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ei,app,mime,cnr,lmt&signature=7CA5CE469ECCC479E1CB65985A84FECAE7B9F04A.B18F0851C60AA98EF9592E618758AB43C2F3C109&key=ck2'),
(209, '23', '2', '', '01', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_439803956434149_1388833780319387648_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=db28d189b310da3cfb4eedacca04c1f6&oe=5A2DA4AD'),
(210, '23', '0', '', '02', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1665217633543150_5076166566618333184_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=7cbc92a96edd46b3c9fd1e552c4dadab&oe=5A2DA7F2'),
(211, '23', '0', '', '03', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_152453042161335_2664448507569504256_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=962856f9532e034fda4e8546ec2d5fbf&oe=5A2DA0DF'),
(212, '23', '0', '', '04', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1617619748284066_3324962143517802496_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=dd7c3a95d1558e471c1eb727c4b9ae61&oe=5A2DAFA2'),
(213, '23', '0', '', '05', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_155221321746157_9205136730997391360_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=90114748411d9f1c77cfdf06dd593bdf&oe=5A2D98D8'),
(214, '23', '0', '', '06', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_138843926755063_7127837925265375232_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=22d28b16c54748429f1bc9554aeec91f&oe=5A2DB0E8'),
(215, '23', '0', '', '07', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_152469608822901_7913647624232632320_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=cbccc64648bf8ea0272cbf3c9c2a3d26&oe=5A2DA0D0'),
(216, '23', '0', '', '08', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_876995509123730_6211226736760193024_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=786e2c649b2007aefba0e0c5c1e38aec&oe=5A2D8950'),
(217, '23', '0', '', '09', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_189029755002797_8285378070198616064_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=acc54a18aafe04345160d16740e41069&oe=5A2D9D2B'),
(218, '23', '0', '', '10', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_883758268454866_2464357788113960960_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=7ea9ef1e8496380a80758aadda457a32&oe=5A2D96D7'),
(219, '23', '0', '', '11', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_124950808166347_4217672096718782464_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=a095fb9763b656da9e0ae971bf4db684&oe=5A2DA703'),
(220, '23', '0', '', '12', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_314330159043767_1550548520308572160_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=3c7326fb78d6cf7c64653fa0c92a97c2&oe=5A2DB915'),
(221, '23', '0', '', '13', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1544621628927727_8352135172082106368_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=4ddc6007ff5aa101bc61ce2d07b60c27&oe=5A2DB316'),
(222, '23', '0', '', '14', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_171217233460461_6086438729717645312_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=12ed89f438423553b2ee5450240fb060&oe=5A2DB5F8'),
(223, '23', '0', '', '15', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_2024484821120340_6846337462218784768_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=c6aee20609e5b1ae82d357c6cee73390&oe=5A2DAFA5'),
(224, '23', '0', '', '16', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1773858946250295_58320613588074496_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=89d06a358c852e0cceb1b8f04bdcf007&oe=5A2DAF32'),
(225, '23', '0', '', '17', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_2053787788176359_2571284267417993216_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=69939866e83fbb6f3d9f7fecedc924eb&oe=5A2DB2A8'),
(226, '23', '0', '', '18', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_880282162123353_2878944276752891904_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=05567399064d72708aa0aa18605e20eb&oe=5A2D9A4D'),
(227, '23', '0', '', '19', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_126183948057030_228755984024076288_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=ba83b29044a1832a0c4e0631c5536095&oe=5A2D9447'),
(228, '23', '1', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_777483332455728_6618282038900293632_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=08982a2c099a3c8b71edd0ae4d75df17&oe=5A2DAC79', '', '20'),
(229, '24', '1', '', '01', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_128883137775609_4852321083128283136_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=9f558a23893bfa64d4d983433228c8bc&oe=5A2E0CE3'),
(230, '24', '0', '', '02', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_642681572787748_7028903916242731008_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=dd2df11db947e08181bd00c4ee8e2ba6&oe=5A2E1988'),
(231, '24', '0', '', '03', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_882390658585701_8424596896772784128_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=e7e4dad3e78c11e6fe0f0639f3c28f60&oe=5A2E1CC0'),
(232, '24', '0', '', '04', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_530806390606332_4331840371920207872_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=69c5b2ddb4d810c4502407e8ee35a42a&oe=5A2E0B49'),
(233, '24', '2', '', '05', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_530806390606332_4331840371920207872_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=69c5b2ddb4d810c4502407e8ee35a42a&oe=5A2E0B49'),
(234, '25', '5', '', '01', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_128883137775609_4852321083128283136_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=9f558a23893bfa64d4d983433228c8bc&oe=5A2E0CE3'),
(235, '25', '1', '', '01', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_128883137775609_4852321083128283136_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=9f558a23893bfa64d4d983433228c8bc&oe=5A2E0CE3'),
(236, '25', '0', '', '02', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_642681572787748_7028903916242731008_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=dd2df11db947e08181bd00c4ee8e2ba6&oe=5A2E1988'),
(237, '25', '0', '', '03', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_882390658585701_8424596896772784128_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=e7e4dad3e78c11e6fe0f0639f3c28f60&oe=5A2E1CC0'),
(238, '25', '0', '', '04', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_530806390606332_4331840371920207872_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=69c5b2ddb4d810c4502407e8ee35a42a&oe=5A2E0B49'),
(239, '25', '0', '', '05', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_498971847169130_5915665787737079808_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=82b9b6c4b4460598a1729391ed114b15&oe=5A2E0699'),
(240, '25', '0', '', '06', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_611461575911136_3911681674315825152_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=1e73a2d549f44f453fcd529aa3784b41&oe=5A2E0512'),
(241, '25', '0', '', '07', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_843112925813690_5516105353852354560_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=115c2ba2bab9137aabe91dbd48d191ce&oe=5A2E18B0'),
(242, '25', '0', '', '08', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_124861108208679_5536896521733144576_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=b22c2c2937b370b9bbeb0029fc6891f8&oe=5A2E01C9'),
(243, '25', '0', '', '09', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_142851989687407_7677362008487886848_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=21d37e7741749162321e1d969ccaeae3&oe=5A2E02FA'),
(244, '25', '0', '', '10', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_2248712708487773_8470953866072948736_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=0c8992a08c34f2b9ee441a65f07213bd&oe=5A2E032E'),
(245, '25', '0', '', '11', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_714556112073847_3665774696172879872_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=472b4616f573d0c7167bd33ac48a82bb&oe=5A2E06C5'),
(246, '26', '6', '', '01', '', 'https://us1-sv-24-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=0c5785a674fadb40&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzk&ms=nxu&mv=m&pl=48&ttl=transient&ei=_eAtWpG9INLyqQWw96WACA&driveid=M1BlNlgreXdmVjM1Y0hSZ01ISnNwREZpRFhRTFNMeDI1NmlxcC9XWWwzK2s0YVlDZmJ5eTlYMGFjNTJNdVdNcQ==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1512187629505262&mt=1512956067&ip=2604:a880:800:10::128:e001&ck=Ium51m4dhNg&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNWw2bnprLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512959757&cp=QVNGVEpfWFdTSFhOOkd6bjI2bjlhaUtl&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=7B6FB9DD9820E84B6C2FCADD4809164402194260.6323CB3B4CC4D668EFA882549CAA0EB499C5FC5A&key=ck2&apps=animesync.tv'),
(247, '26', '1', '', '02', '', 'https://us1-sv-21-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=33be09fe7b1af880&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7r&ms=nxu&mv=m&pl=48&ttl=transient&ei=suEtWoTrHsStqwXog4K4Bg&driveid=MFdZZ2dCWUFoZko0NzdSaDBxbmxCakxNQURpTWtsSitXelVSM2h2ZjMrcz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1492460452939843&mt=1512956247&ip=2604:a880:800:10::128:e001&ck=mMWlEBkk6bE&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNXN6bjdyLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512959939&cp=QVNGVEpfWFlRSlhOOmtSWHFKQXBoOXlD&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=2CD8087F2B7C06C02957FD67153BC3712194239A.1E7A4BBF901ED5359241842A84BD0C06F988FE95&key=ck2&apps=animesync.tv'),
(248, '26', '0', '', '03', '', 'https://us1-sv-5-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=51c8543b9d8006c2&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5szne7&ms=nxu&mv=m&pl=48&ttl=transient&ei=zuEtWreTG4nKqQXz-ogo&driveid=SzJybFhBR1JHQnd5MXdBOE81bVplOW1rL3RSSDRJZVl0TnZmOUt6SXFtU1VjNnVFSDUrQTh4cHJ6Zks0MTBFMw==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1493158459188048&mt=1512956247&ip=2604:a880:800:10::128:e001&ck=hZSGvk7ex5k&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNXN6bmU3Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512959966&cp=QVNGVEpfWFlUR1hOOmZFVExhbTFieTRp&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=BB70B5F80813B7AF05EAD1D701230C7EA8D6D112.335B5791138231BEC5997CD1510D9BE440F8254F&key=ck2&apps=animesync.tv'),
(249, '26', '0', '', '04', '', 'https://us1-sv-11-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=5349f232f23c7a71&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsr&ms=nxu&mv=m&pl=48&ttl=transient&ei=6OEtWo-FC4udqQWJqYX4AQ&driveid=NWduNUo1Mk82dUZFbTl4clBndHU1USs4dUt2SGpDdk55dGltREdqYmt5VT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1493711705304993&mt=1512956247&ip=2604:a880:800:10::128:e001&ck=oF7HrKJXGsc&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bnNyLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512959992&cp=QVNGVEpfWFlXQ1hOOm1LME13UEhVSHBh&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=59646ADED833289F59420B37CA925B4196A18A4B.AE2D35C413829F68C354D727C97928D869333461&key=ck2&apps=animesync.tv'),
(250, '26', '0', '', '05', '', 'https://us1-sv-3-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=e0b0f5fc57b418d1&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzy&ms=nxu&mv=m&pl=48&ttl=transient&ei=_eEtWor8NMbRqgW3vrCIDQ&driveid=K1dTR3ZTRGVGK3RPRTBiblpwUHA1SnR5THM1Rnl3Yi9RNzNMWFNOMFlpVT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1494276696853576&mt=1512956358&ip=2604:a880:800:10::128:e001&ck=vDXg_XLK13U&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bnp5Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960013&cp=QVNGVEpfT1BPRFhOOnRJWmNfVUtINDJT&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=958748B8ECAB1488F0C8DB191F8964AD534D20BE.736CF6BEC460F7B50DD685C8E7E4ECF000AAF554&key=ck2&apps=animesync.tv'),
(251, '26', '0', '', '06', '', 'https://us1-sv-24-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=9aa13f4eb88cd4ff&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7s&ms=nxu&mv=m&pl=48&ttl=transient&ei=LuItWr6nJIn1qQWg2LRY&driveid=MDQ2bEFXeXNyMk5xLzQxVE4yUGgyUGl4UGdBNWo5SmY4UWlmNGxDUnNXTT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1494891190589894&mt=1512956358&ip=2604:a880:800:10::128:e001&ck=BwhMdKJaAUM&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNXN6bjdzLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960062&cp=QVNGVEpfT1BUQ1hOOlpiakl6TUh4QlJL&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=11A150783E233737DF1BB6D20370812194916ADC.83452389DAA6495CC2C504CF86B9309EF3479238&key=ck2&apps=animesync.tv'),
(252, '26', '0', '', '07', '', 'https://us1-sv-12-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=ece1b4aacc33bc99&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5l6nsl&ms=nxu&mv=m&pl=48&ttl=transient&ei=S-ItWtufEov2qgX9vJLQCQ&driveid=QnBwUzNuTi9qSmt4bk1OU0MxVWQ4aVNKVFVMdkZ1cExGNjZndzVwWWt3S2hwc0dRdnJtdytORGZZRXJBbWNVTg==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1495931379199322&mt=1512956420&ip=2604:a880:800:10::128:e001&ck=BmIgsdZD6Ao&dom=aHR0cHM6Ly9yMTItLS1zbi1hYjVsNm5zbC5nb29nbGV2aWRlby5jb20v&ipbits=0&expire=1512960091&cp=QVNGVEpfT1BXQlhOOlpyS2NvaVdBOVht&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=8E19025502DB7E0EE36883908C86CA7F83F25670.9A4FEC8E3CAD461CEE3A0AD9C92C1A01D8C4C8E7&key=ck2&apps=animesync.tv'),
(253, '26', '0', '', '08', '', 'https://us1-sv-11-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=8fd42224a5532c96&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5l6nzk&ms=nxu&mv=m&pl=48&ttl=transient&ei=XuItWse5MYfAqgX8-LTIDw&driveid=U0dsK1lWMWxWVXRYVzJuZ2ZhZWFFZGpIUzdIVExSc1RXc2Z0M2IzNG5uRTVTZmlZeFY0eDNiSDB2SENqckpoQQ==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1496344585170329&mt=1512956420&ip=2604:a880:800:10::128:e001&ck=q2kdzZbq1E8&dom=aHR0cHM6Ly9yNi0tLXNuLWFiNWw2bnprLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960110&cp=QVNGVEpfT1FPQVhOOm85bXp3V3huNEI4&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=355463C0775FDF66D3B45F196DAFA0AE1BE78B6F.3BED335BE680020850D203C1DCD3C5956451BAB5&key=ck2&apps=animesync.tv');
INSERT INTO netflix_videos (id, idserie, views, nome, ep, desct, video) VALUES
(254, '26', '1', '', '09', '', 'https://us1-sv-17-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=bcc1e2c4ca82a260&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szne7&ms=nxu&mv=m&pl=48&ttl=transient&ei=deItWvmoIdemqQX8lIzICw&driveid=UkJlUmpIRVFjd2pRcEFuQmM5Z3BOR0xmaDJlZktUM3lxK1dTbWl0RVZNbz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1496777894454208&mt=1512956420&ip=2604:a880:800:10::128:e001&ck=NHSg23vhvFE&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNXN6bmU3Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960133&cp=QVNGVEpfT1FRRFhOOkxNVWMxNHVld0ND&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=31A5E827CE8E487199018C193A19AF587B14E8FE.B30FA1D2723F7852E4F8ACAACB2C21AF9D6AABDB&key=ck2&apps=animesync.tv'),
(255, '26', '1', '', '10', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_718061655064059_4853805617099309056_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=35ff9e2e81928781ee143b6a1fc488c6&oe=5A2E19DB'),
(256, '26', '1', '', '11', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_215532895634978_1435222029866369024_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=9c9f49fa4bed187d6b51423ec1152700&oe=5A2E1ECB'),
(257, '26', '2', '', '12', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1949211328655595_3226218508920553472_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=8db59d1b7886ccb7415493d7ef270126&oe=5A2E050A'),
(258, '27', '8', '', '01', '', 'https://us1-sv-13-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=f0d4f706346fd3a7&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5sznlk&ms=nxu&mv=m&pl=48&ttl=transient&ei=quMtWsyLJoiLqwWtxpeoDA&driveid=aEpGV0xJbVcyTFlFalJkMTlZYktZOHJkZzJoUlI0d1dWOHIzeFF4RFRuVT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488616558813955&mt=1512956782&ip=2604:a880:800:10::128:e001&ck=ln3gGwUFnG8&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNXN6bmxrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960442&cp=QVNGVEpfT1RSQ1hOOmpzN2NHd1NDb0Q4&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=1A8D648BCE3F05E75228F7D5A006A17E7B66220E.0B98373D38E58CA1F209CEF62178940583C4AEEE&key=ck2&apps=animesync.tv'),
(259, '27', '0', '', '02', '', 'https://us1-sv-24-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=0c1f0ce9f7cd12ce&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsy&ms=nxu&mv=m&pl=48&ttl=transient&ei=KOQtWofyA4j1qAXJ77XgBw&driveid=d3hkVFBjNVBHQXU1VmY0K253aXpPa1N0QVVpK3o2ZitOZ0lJTW91MElNdz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488621342519223&mt=1512956905&ip=2604:a880:800:10::128:e001&ck=TXgGg6VQ5ak&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bnN5Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960568&cp=QVNGVEpfT1VUSVhOOlJDaUNoMFpOOHhp&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=B2A4A4758E628917D4B42A79837BCDAD4DE99F1B.171F941567764049C7E50B5BEA0F2CB8BBD6D18E&key=ck2&apps=animesync.tv'),
(260, '27', '1', '', '03', '', 'https://us1-sv-11-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=52d7fd628adb8981&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsk&ms=nxu&mv=m&pl=48&ttl=transient&ei=POQtWq3SKNHvqQWBi73oDg&driveid=Rjg0L3llSWxHWWJBUStNRlpNNlVuQWxDTmNSY3BvRGdpWDZzbVl6YzEzND0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488621402327814&mt=1512956905&ip=2604:a880:800:10::128:e001&ck=YwisDLwOLWo&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNWw2bnNrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960588&cp=QVNGVEpfT1VWSVhOOldia29FUGFMTVRt&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=48EB2DFAB655946F3294D47F23DEAE8F166D263D.2D19D130D94D7475A3E80A7A78EF033A5A2997D5&key=ck2&apps=animesync.tv'),
(261, '27', '0', '', '04', '', 'https://us1-sv-4-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=7cbf1fa4edff6bec&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n6l&ms=nxu&mv=m&pl=48&ttl=transient&ei=XuQtWq60GMStqwXog4K4Bg&driveid=emZNTWdtWUE1VjVCK2pkdE02cHRDL0lPVmdWU0dEdmRYcmlrWCtSNmRRbz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488636019213826&mt=1512956905&ip=2604:a880:800:10::128:e001&ck=cfF4ix6S308&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bjZsLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960622&cp=QVNGVEpfT1ZQQ1hOOmFrSDJrdjZQNjk4&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=9CDCF75E1CEE37D6F3D3A8C4962E97E36AC4CBF9.30F71202A4700B10534EE264BAE440A8E1515975&key=ck2&apps=animesync.tv'),
(262, '27', '0', '', '05', '', 'https://us1-sv-18-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=72d7b649c558f1ae&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5sznlk&ms=nxu&mv=m&pl=48&ttl=transient&ei=xeQtWsS8NovAqwXK3LbABQ&driveid=ajBlalVTeElXM2lhSXh0OWlqQ2VVZ2F5TVVabFB6Z0ExcEtCbkhmRXZMST0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488638684728650&mt=1512957024&ip=2604:a880:800:10::128:e001&ck=NG1YxQ-MINE&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNXN6bmxrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960725&cp=QVNGVEpfT1dQRlhOOkxMNVVhTy1KSktD&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=AE50F96A76B893F99EBAA743C765461AA250FAEE.0F0994ECF8BC18E41611D7ABEA7D5CFE409A18CA&key=ck2&apps=animesync.tv'),
(263, '27', '0', '', '06', '', 'https://us1-sv-14-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=953daef79a1db08f&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n6l&ms=nxu&mv=m&pl=48&ttl=transient&ei=2uQtWvyiMtboqAXzzII4&driveid=b1NjKzRoNVdNNDBTUzBaQXZYYmZMenRkQ3R6Q2MzMzczcXNDUUtCNGhBcz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488641763828398&mt=1512957082&ip=2604:a880:800:10::128:e001&ck=nEBbX7Jgkro&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNWw2bjZsLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960746&cp=QVNGVEpfT1dSR1hOOmxKRHhBOUxkbG9t&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=7BE2413AB2557E52C6E89559D8A975B1F89317C6.6EE6203EF91F88091C5105D71E9C6F3E80A21709&key=ck2&apps=animesync.tv'),
(264, '27', '0', '', '07', '', 'https://us1-sv-4-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=c1a9d8d580cb3879&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5sznld&ms=nxu&mv=m&pl=48&ttl=transient&ei=NuUtWsyuDM3bqwWMqI6ACQ&driveid=U3czcGxJK1pHeFJYeW42Ny9xNjRteXExWmFFYTlFRkt6cnhpZDhWMFpVTT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488531678536356&mt=1512957082&ip=2604:a880:800:10::128:e001&ck=iX0uYgMYOew&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNXN6bmxkLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960838&cp=QVNGVEpfT1hRSVhOOmdDNHFDZlFWUGJ1&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=0AADCFA876CCB5C282315057E4BC5E0585ACAA5B.37F040C2EC0E571BCD27A6A4102D3162B8337916&key=ck2&apps=animesync.tv'),
(265, '27', '0', '', '08', '', 'https://us1-sv-25-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=af7b9f2075ba8544&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzy&ms=nxu&mv=m&pl=48&ttl=transient&ei=YuUtWsWwMofAqgX8-LTIDw&driveid=RWU1UzRoZDF5bEU5bW1sNitMc25nY01lMDY3NVJyNVQ4QUxNNWsxYTlTND0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488648738970835&mt=1512957261&ip=2604:a880:800:10::128:e001&ck=UfkAhA0jkDM&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNWw2bnp5Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960883&cp=QVNGVEpfT1hWRFhOOlNrbVdsRTFnbEFL&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=98002B91ADEE4BE9E6E12FB14C8CE9ED3DDA6155.5405941FF52AEDC49B7D2FA84D012165E3854BB7&key=ck2&apps=animesync.tv'),
(266, '27', '0', '', '09', '', 'https://us1-sv-23-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=df32331c2b7d2a9a&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsk&ms=nxu&mv=m&pl=48&ttl=transient&ei=heUtWr_TNsbRqgW3vrCIDQ&driveid=RjBtSURuY09ONjlqUmcyOFpJeWRab2N3RUtOV0swMzZya1dXSmxNdElMaz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488652533647034&mt=1512957261&ip=2604:a880:800:10::128:e001&ck=xcZRluVa9wQ&dom=aHR0cHM6Ly9yNi0tLXNuLWFiNWw2bnNrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960917&cp=QVNGVEpfT1lPSFhOOnZoQk5xcll4MnRP&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=A46E1490886FEF1C8529B8DFD9B99361FD9AD8DE.9E5E6A9A8C76444AA17E510740A7AB3A3D0FA484&key=ck2&apps=animesync.tv'),
(267, '27', '0', '', '10', '', 'https://us1-sv-14-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=c35948c49b1b3155&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n67&ms=nxu&mv=m&pl=48&ttl=transient&ei=weUtWrXOPMruqwXW9pm4Dw&driveid=YjJkUkN0QkpySHJFZmJIbk5HTllERVBRdXIzQTR2Z2pTeU5ucm5xampIaz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488628593116572&mt=1512957320&ip=2604:a880:800:10::128:e001&ck=S-ISKwSxX0c&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNWw2bjY3Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512960977&cp=QVNGVEpfT1lVSFhOOlEtS09QelZ1WTlh&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=6170031295891F57921B7BDD8724059B2DBFA748.808BF8269B3187FE3540DEB56E3A3D3BCC7EA77A&key=ck2&apps=animesync.tv'),
(268, '27', '0', '', '11', '', 'https://us1-sv-10-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=a5832b6b63094f13&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n6e&ms=nxu&mv=m&pl=48&ttl=transient&ei=5OUtWoL_HYnCqgX3kKWIBg&driveid=RUdPT3hUcC9pOGpMQytCT1pIdms5TVl2ai9YNm50SFU4MWt0d1IzcGNzZz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488625510792715&mt=1512957320&ip=2604:a880:800:10::128:e001&ck=NkDW2HLzbGs&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNWw2bjZlLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961012&cp=QVNGVEpfUFBPQ1hOOkxwRlQwRUp3Y0Rx&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=334C51A33E17530AD217DADCEA011C0B8BAF6E52.3CFA52FEAB4D717BCF2B975430A52F551111D62F&key=ck2&apps=animesync.tv'),
(269, '27', '0', '', '12', '', 'https://us1-sv-6-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=7e63ec5d42031099&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsr&ms=nxu&mv=m&pl=48&ttl=transient&ei=C-YtWqPBB9H2qQWeraC4Dg&driveid=RWRDWWtXZVR4bDlnSHJNSzJpSjZNb0pLbjZLR1hwOHl6cmJSSHYxcDJ0RT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488633938685988&mt=1512957380&ip=2604:a880:800:10::128:e001&ck=OMm6PxVhLSA&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNWw2bnNyLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961051&cp=QVNGVEpfUFBTQlhOOk1SbzVMeVNlTVBZ&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=BBB84E0E13B81AA510E78C6868E3A353A52B1B5D.36B1759DB819C7DD5CBBFFFDD4ADFA70109A5EDF&key=ck2&apps=animesync.tv'),
(270, '27', '0', '', '13', '', 'https://us1-sv-14-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=3da4704e4a66415f&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n67&ms=nxu&mv=m&pl=48&ttl=transient&ei=OeYtWsjiHMbRqgW3vrCIDQ&driveid=RytkdnpPQWY0MlFMNFlnd09NNDZXSUIwVWxCcXFPb3V3aGJXMmNreXZtQT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488630653690679&mt=1512957441&ip=2604:a880:800:10::128:e001&ck=lH-d5mcO0qE&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bjY3Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961097&cp=QVNGVEpfUFBXSFhOOmpNLWEzcmZMM25D&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=54339053663C1559F63C73D2C858745BD59BD475.A7915618175C7A8ECEE358E9D7F453D99A5087E7&key=ck2&apps=animesync.tv'),
(271, '28', '18', '', '01', '', 'https://us1-sv-14-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=0d305a5f5da91c30&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5sznle&ms=nxu&mv=m&pl=48&ttl=transient&ei=RuctWsjKC5LfqgXU2LqQBg&driveid=eFZpN01mZXFORmVQUnZuVmdBK1YzV0F4UFZxL0l0OGo4dXFQK0JZd2VMcnhrWjBVdWFKSVZHWUJOSGJrOGFVdg==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1492373568493370&mt=1512957686&ip=2604:a880:800:10::128:e001&ck=hhixKtMX3Bc&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNXN6bmxlLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961366&cp=QVNGVEpfUFNUR1hOOmZta3VKdk9VNllh&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=0293CE4313A5ADA7BBD27482F8016FDB1C8212B1.50A702068CE44F0B848E6DDBBF866E5ECE644526&key=ck2&apps=animesync.tv'),
(272, '28', '3', '', '02', '', 'https://us1-sv-11-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=7414b8cf7c4a5cc2&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5l6nzy&ms=nxu&mv=m&pl=48&ttl=transient&ei=B-gtWrq-McnwqgWJ1bDYBQ&driveid=T0Z4cGtsdFNtdWNvczdKVG5DOFNXdk8xMWRrRjBuMVN2VWFrakw4UU13YzZmOE01elM0c0k4MzY4MERMOEVVbA==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1492794471139319&mt=1512957866&ip=2604:a880:800:10::128:e001&ck=4pxN43EesNM&dom=aHR0cHM6Ly9yNi0tLXNuLWFiNWw2bnp5Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961559&cp=QVNGVEpfUFVTSlhOOjR1eks3NkpidEtL&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=5DE860468A3F2FDA46D950EAF7D2E96DBCEEFE9F.0EE488C0145FCE2FFE171AE72395C608D9222167&key=ck2&apps=animesync.tv'),
(273, '28', '2', '', '03', '', 'https://us1-sv-23-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=00b0ae1e9495b20d&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5sznlk&ms=nxu&mv=m&pl=48&ttl=transient&ei=GugtWpHXMYGgqwX5oJPoBA&driveid=U1VRZHBpUXg0ejZuYjEzSmhvN0E2dUZwMFIwbnprV1UzUmdoRzc2SWthaU9VU1prRExGa1dnWTl0OTlXdUZvQQ==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1493229918781909&mt=1512957866&ip=2604:a880:800:10::128:e001&ck=RN8R7KZSfGU&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNXN6bmxrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961578&cp=QVNGVEpfUFVVSVhOOlBTMk8wTkRQZ0RT&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=5591FBF9A41FF3574CD22E49E3FF459775E95536.52158DA436D544884533DB904BFEB0568C5CA81A&key=ck2&apps=animesync.tv'),
(274, '28', '1', '', '04', '', 'https://us1-sv-12-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=d40b681a2d618f6d&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5szn7y&ms=nxu&mv=m&pl=48&ttl=transient&ei=LegtWq7JJoGgqwX5oJPoBA&driveid=OXpXbzB2YUR3b3FaTThoVnVSckdKNzNVU3EzbjE3VlBHOTR3TzF6WUlOOGRnV2ZHZ2wxNllPUjZGQ0JMSGozZA==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1493777167304966&mt=1512957866&ip=2604:a880:800:10::128:e001&ck=l8NAfuIFkjI&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNXN6bjd5Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961597&cp=QVNGVEpfUFVXSFhOOmo1UFhnekxDbGdH&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=8C7D9FC2F69A1C95BCF8B3C2DBB65D627C723F42.7B5E1D4DA041A0E139A1A4CEF2C376B066C91FFB&key=ck2&apps=animesync.tv'),
(275, '28', '0', '', '05', '', 'https://us1-sv-14-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=79b4a68072c4e1a5&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5l6nzk&ms=nxu&mv=m&pl=48&ttl=transient&ei=PugtWrjxKov2qgX9vJLQCQ&driveid=ZjhXb0kwZ2hrWFJhWFNjeEJvaVN6SGdQR0tEa3oyUEp2ZVVtK2RGUE1ya3pYMnhuc2RLMlY3THhFRjVhNVBXNg==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1494366699412188&mt=1512957866&ip=2604:a880:800:10::128:e001&ck=kqSkS6e6WvU&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNWw2bnprLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961615&cp=QVNGVEpfUFZPRlhOOml2VWhVNWY1WHNT&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=0BCBD268223DD163D6B855BB96E8F1D08CBE357D.342CDE3731E65BFB2BF45780F67B4898727D2F14&key=ck2&apps=animesync.tv'),
(276, '28', '1', '', '06', '', 'https://us1-sv-11-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=19ea1524cf2c2307&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5szn76&ms=nxu&mv=m&pl=48&ttl=transient&ei=rOctWo23C9fwqAXexqCwBg&driveid=aFRzQThvMUR0NVNqSWhhdi9HWmcvU2kwR0dzR01MaExPUi9hNTk0eFhuaUdzVDZKU1R5SXpIc3M1Qysramxweg==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1495167708771493&mt=1512957804&ip=2604:a880:800:10::128:e001&ck=7f3wGD557qc&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNXN6bjc2Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961468&cp=QVNGVEpfUFRUSVhOOjdrN3RHRjE0MG5h&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=2C0147F8EAC2E5DBCBD08D991DC9C4F934022ECF.A125553BD06922FA73BB0DE685A507C590E29B42&key=ck2&apps=animesync.tv'),
(277, '28', '1', '', '07', '', 'https://us1-sv-17-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=acfc7218358a2e6c&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5szn7r&ms=nxu&mv=m&pl=48&ttl=transient&ei=YegtWrPHB4TdqAXz26eIDA&driveid=eVhnTVhsOUExbFcrODAxRkRNL1UyZzZvTWlZdjRKNE95WDZpVjFCMmJrdTJjSndwWUlDVXhEWFBXeWNpdjg4VA==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1496453505145576&mt=1512957920&ip=2604:a880:800:10::128:e001&ck=M40KIbsPV9c&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNXN6bjdyLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961649&cp=QVNGVEpfUFZSSlhOOksxNEhLYnhNVzhh&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=7A2D397E12B3EB900EC0E0A0A5870283C3F04500.2AF56A1127686DA986D7042D51BA4EADEB4B6DFB&key=ck2&apps=animesync.tv'),
(278, '28', '1', '', '08', '', 'https://us1-sv-19-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=15240bb70301c380&itag=22&source=picasa&requiressl=yes&mm=30&mn=sn-ab5l6n6l&ms=nxu&mv=m&pl=48&ttl=transient&ei=cugtWpukHYzsqwW9_bSYBw&driveid=aHpqWWFwb3ZjMHI0RWFXOStWU2VpaDI0QmdMemtCNDdGTEs3MHZ3K1NjNkNwK0JWWEtnelVhdjhDdnhhMmo0bg==&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1496444769783182&mt=1512957920&ip=2604:a880:800:10::128:e001&ck=gupYH6Dc6hY&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNWw2bjZsLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961666&cp=QVNGVEpfUFZUR1hOOmV6clZKMEZ6OWVX&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=AEB3719236C77680CDFEAC1A73892A9C8935F100.2CF375D3998512DBB61E8C52E268C89773809B7F&key=ck2&apps=animesync.tv'),
(279, '28', '1', '', '09', '', 'https://us1-sv-15-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=9df41dad6f4bb2d4&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7y&ms=nxu&mv=m&pl=48&ttl=transient&ei=h-gtWpvXCIiLqwWtxpeoDA&driveid=bHNiNDFsTVdZb1RSVHkrOHVsdEhYeFVycFAyWmdDOWMxN2ZjazlYdjc1QT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1496610092998913&mt=1512957920&ip=2604:a880:800:10::128:e001&ck=8PRZAPQszGw&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNXN6bjd5Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1512961687&cp=QVNGVEpfUFZWSFhOOjhVVFdDVFRwYUR1&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=1132578F156781002A93BD4A738DDD5303BAD06F.1140C8D817B900B6B8CFCDB44F16223E4EB565CB&key=ck2&apps=animesync.tv'),
(280, '28', '0', '', '10', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1600909959920080_913887195692007424_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=d7b1c228226d0d7c6b269636b9d9b62c&oe=5A2E05C1'),
(281, '28', '2', '', '11', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_118209498778173_8505310915791421440_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=4471b6f605517d1ee5aca8c8b9d57b43&oe=5A2E1852'),
(282, '28', '1', '', '12', '', 'https://video-ams3-1.xx.fbcdn.net/v/t42.9040-2/10000000_127225657942049_2368824615800668160_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=734c628e0e0ad134e5481262c1453da9&oe=5A2E14BB'),
(283, '29', '27', '', 'Completo', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_350816775362746_8193500902896697344_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=bb919d73d52a39fe8900fbbb9ebcd1f0&oe=5A2ECD2C'),
(284, '30', '12', '', '01', '', 'https://us1-sv-11-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=5ee64c3986cf9854&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzk&ms=nxu&mv=m&pl=48&ttl=transient&ei=ioAuWuDqGciMqwWc6K7gDg&driveid=bXgxUDBUN1MrV0JtdDNrSDZzTWtrUm10dVkyZkR1MVpNbDdncU1ib05Ydz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489799148721993&mt=1512996925&ip=2604:a880:800:10::128:e001&ck=nbVOT-w0x4E&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bnprLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513000602&cp=QVNGVUFfT1ZOQ1hOOm14UktWLXU5eTNE&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=5D611FA7DF41DEE5E191E00E3587FB408A4C54E2.1FAC31BAF41DD96B8206789C4D667FFC53B2C66F&key=ck2&apps=animesync.tv'),
(285, '30', '4', '', '02', '', 'https://us1-sv-18-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=c0707feddb483794&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsy&ms=nxu&mv=m&pl=48&ttl=transient&ei=zYAuWunaAYzsqwW9_bSYBw&driveid=RWZxbFFrYlhwNHIrN20vVkxhdkszQ1ltYVh1NTNKNldRdkxyOXVZTEFyRT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489793837060599&mt=1512996925&ip=2604:a880:800:10::128:e001&ck=DhbWy2QBAJE&dom=aHR0cHM6Ly9yNi0tLXNuLWFiNWw2bnN5Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513000669&cp=QVNGVUFfT1ZUSlhOOkNkeFNhNlZZQkdE&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=7F95481EF3BEF0ECB80258EDE13E6A210839D92C.085B360626AE97B10A7B30313C5A1D50065B3F1F&key=ck2&apps=animesync.tv'),
(286, '30', '4', '', '03', '', 'https://us1-sv-22-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=97f4241e47301706&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nss&ms=nxu&mv=m&pl=48&ttl=transient&ei=aIEuWumpFtebqQWRqrjIDg&driveid=dDFhL1VGOUlhY1VlOEJYcmpRbGwwZUowZkM0aEZHK01zSGZVc283bnNsTT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489798963881594&mt=1512997100&ip=2604:a880:800:10::128:e001&ck=ntFLJubA0m8&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNWw2bnNzLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513000824&cp=QVNGVUFfT1hQRVhOOm1wQkhOc2JYM2o5&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=6EB75CF390337090107C6DA05C0A225D702A58D3.6BF93A00D29F6CCCB724607A30277B41F169D463&key=ck2&apps=animesync.tv'),
(287, '30', '0', '', '04', '', 'https://us1-sv-13-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=2e5fee6a6d7ff1e8&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7s&ms=nxu&mv=m&pl=48&ttl=transient&ei=vIEuWsuHF8ruqwXW9pm4Dw&driveid=dzJkSHI4cUNwOXd2RS9CQTN5akoycDFzRVVCRzUxZnZobGdSdWs2UXBBZz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489801332201478&mt=1512997224&ip=2604:a880:800:10::128:e001&ck=8xfIXZr5Zfs&dom=aHR0cHM6Ly9yNi0tLXNuLWFiNXN6bjdzLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513000908&cp=QVNGVUFfT1lOSVhOOjl0YkVDVnY0QWNy&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=853EA296A548725F25E10DD5B3AA38927FFE2C71.A713C284FCFF4327873852918E92FEC31EC66FF9&key=ck2&apps=animesync.tv'),
(290, '30', '2', '', '05', '', 'https://us1-sv-22-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=a01a2e9f30452d9d&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nld&ms=nxu&mv=m&pl=48&ttl=transient&ei=JYIuWoy1GYvAqwXK3LbABQ&driveid=dVp6dHJ6Y1NDMVJNQVVHeDR5ZUpreHdlREk0aFp5NVNmL1JCbnNGbnhwbz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489808158943050&mt=1512997286&ip=2604:a880:800:10::128:e001&ck=3VXNqXPmUX4&dom=aHR0cHM6Ly9yMTItLS1zbi1hYjVsNm5sZC5nb29nbGV2aWRlby5jb20v&ipbits=0&expire=1513001013&cp=QVNGVUFfUFBPRFhOOjRSVEttVU9qVlU1&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=9E4E503164F9C1BDEE529339DCDE9CE8785682A5.5019FB1A032891A14C6A07F1811FC8BD4011A577&key=ck2&apps=animesync.tv'),
(291, '30', '2', '', '06', '', 'https://us1-sv-14-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=74230c7d58c9dc23&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n6e&ms=nxu&mv=m&pl=48&ttl=transient&ei=XYIuWtDbHovAqwXK3LbABQ&driveid=MDJRak0vWnlwUC9GREc4VVpWZW4raHovaFhGNEJzSEdXOFFXREx2aDIwND0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489806693137099&mt=1512997286&ip=2604:a880:800:10::128:e001&ck=mTfGdEbp1mw&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNWw2bjZlLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513001069&cp=QVNGVUFfUFBUSlhOOmxQYkR6R2dtNGp2&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=0E90544F751563F1B68CD4A3ED16A30757979043.824903EE2DEDBB1341FE9D7260514CF5DD0AFBB7&key=ck2&apps=animesync.tv'),
(292, '30', '1', '', '07', '', 'https://us1-sv-4-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=7ce9d772d097481f&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsk&ms=nxu&mv=m&pl=48&ttl=transient&ei=i4IuWue6E8PNqAW9w7igAQ&driveid=OTRoL1Vmdm4wTE5YUDV6Z1ozbnpSWXF1MU04V2JaN3ZkNVhYUHpnK3c3QT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489808318115017&mt=1512997286&ip=2604:a880:800:10::128:e001&ck=IDyNUjXDjSo&dom=aHR0cHM6Ly9yNi0tLXNuLWFiNWw2bnNrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513001115&cp=QVNGVUFfUFFPRlhOOkhadUtSZ1lBa1Bu&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=21B178305F9967E724B726DE72818DC99C4415A6.39955C232D4935206BCB2DFE4FA8CD8977FF27A4&key=ck2&apps=animesync.tv'),
(293, '30', '3', '', '08', '', 'https://us1-sv-10-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=9aac80ce47fb941c&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzl&ms=nxu&mv=m&pl=48&ttl=transient&ei=rYIuWu2oFte2qQXD-LbICA&driveid=ZmpENUFOc011T2F3QWNUbkxtdGovczd0OFl2ZHNNTmhWdU1iRENSbDQzaz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489811061891200&mt=1512997463&ip=2604:a880:800:10::128:e001&ck=wF80tz1-1Tc&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNWw2bnpsLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513001149&cp=QVNGVUFfUFFSSlhOOnZCNjlxejgtNFFi&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=18C0A06CE3B31D1E650C949436E114C2C0C75D7D.716F3930A7B2570FB7A7DBDB6A845263021EF7A3&key=ck2&apps=animesync.tv'),
(294, '30', '0', '', '09', '', 'https://us1-sv-25-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=9a4ebbee741d522b&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7k&ms=nxu&mv=m&pl=48&ttl=transient&ei=8YIuWpS7BNebqQWRqrjIDg&driveid=TmpaMlZ1cTR5TlFkb0dJcFRvSWN6SFNUWHNOWnRpUDc0MVlSNit1ZzJBST0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489796525889983&mt=1512997522&ip=2604:a880:800:10::128:e001&ck=VkF1xVa8Hbc&dom=aHR0cHM6Ly9yNi0tLXNuLWFiNXN6bjdrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513001217&cp=QVNGVUFfUFJPSFhOOlVnQjB2U2Q3SXli&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=042A03D6B6BABEB20122DB6B63F4053B67B08206.A74E3B0FE5D7F04F749FA0891EE75A130423F599&key=ck2&apps=animesync.tv'),
(295, '30', '2', '', '10', '', 'https://us1-sv-24-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=df162a97e6fb8e27&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn7s&ms=nxu&mv=m&pl=48&ttl=transient&ei=FYMuWofWPI3lqgX-uYioDw&driveid=ZExvNHRlS05MNGVRUXk5YnN6NERlRzRYbVhBSVg2UGNYNStzZ0NVRHFIdz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489812479160108&mt=1512997580&ip=2604:a880:800:10::128:e001&ck=y095PAUuHKw&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNXN6bjdzLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513001253&cp=QVNGVUFfUFJTRFhOOng4NzROQlRySUh2&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=0854E8106C82A631060CA641D047E74C7985F5BF.59C3137F4959C0A88BBE257F75A3212B1B6528BD&key=ck2&apps=animesync.tv'),
(296, '30', '0', '', '11', '', 'https://us1-sv-5-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=f1e4a650df791b19&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsr&ms=nxu&mv=m&pl=48&ttl=transient&ei=RIMuWuSXOdfwqAXexqCwBg&driveid=dUxhTlBlYkllNlFrKzkzYUw3akxMMHRzbEVUbmJpWW1EdHlaVUxmZVNjQT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489816111474426&mt=1512997641&ip=2604:a880:800:10::128:e001&ck=6oTsLaXsEHo&dom=aHR0cHM6Ly9yNi0tLXNuLWFiNWw2bnNyLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513001300&cp=QVNGVUFfUFNOQVhOOjdrUHBLd1RwRkVu&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=B2B39AF370224FF0EC7AD4F1C749B8CDDA2BB34C.B7B8811473D795D92BC7A83FD052FB32C23D763B&key=ck2&apps=animesync.tv'),
(297, '30', '0', '', '12', '', 'https://us1-sv-19-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=28c435e739903c51&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n6s&ms=nxu&mv=m&pl=48&ttl=transient&ei=cIMuWpuzCpLfqgXU2LqQBg&driveid=cUFiS1lkNE5pYkxXLy9RSHFPUjluRmxMSDBCLzVQUUI0aHpKRXMxcFJMST0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1489825557551605&mt=1512997641&ip=2604:a880:800:10::128:e001&ck=gG4O4rYICGw&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNWw2bjZzLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513001344&cp=QVNGVUFfUFNSRVhOOmZDMkw1cllGRER2&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=6494977B9614968983DFA69B6E4D0175C32BB341.B317B84B298E1D07AA60106CF2068BB8A6755A7E&key=ck2&apps=animesync.tv'),
(298, '31', '3', '', '01', '', 'https://us1-sv-12-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=08b9a2135c2a22e9&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n67&ms=nxu&mv=m&pl=48&ttl=transient&ei=MocuWuTnFdboqAXzzII4&driveid=cDVFZDJPeXBPeG1Vcm53SVNkQUN1Lzl0cDNZMDdjRThrR1JpeStjRjhEST0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488288868457681&mt=1512998601&ip=2604:a880:800:10::128:e001&ck=GD9E8QNK23o&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNWw2bjY3Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002306&cp=QVNGVUFfUVNOR1hOOkZaN0M5TVBINTJu&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=9FDE517CCD972B7903E00898AD255C8BAB3CDF7A.17C374D43107DF971DD74E4282059973ABC58703&key=ck2&apps=animesync.tv'),
(299, '31', '1', '', '02', '', 'https://us1-sv-23-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=929b1f5d7e5e233b&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsr&ms=nxu&mv=m&pl=48&ttl=transient&ei=WIcuWsjMHtbZqAXshaD4Aw&driveid=aWs0cWZ1dkpFY0loalptZFNBQzVYVThKdUFmRDVITVhSUG0rdnRaemdvST0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488291221131860&mt=1512998662&ip=2604:a880:800:10::128:e001&ck=kjEAiwyS1D0&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNWw2bnNyLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002344&cp=QVNGVUFfUVNSRVhOOmpmQVlod3lQNEEx&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=8D9D43955A93C2A3C582696808E326111EE6F784.457D264867EF5628B568079A42FF1E924E267B08&key=ck2&apps=animesync.tv'),
(300, '31', '5', '', '03', '', 'https://us1-sv-14-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=d53cd2b5ed141cfd&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n6e&ms=nxu&mv=m&pl=48&ttl=transient&ei=cYcuWs75DMbfqQW724eABA&driveid=NDJDUEpQODBPQU9teGp2WFJQMTFhUzI2OFJ1TUYzTi9BT1ZpeHU3clZHWT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488293284018495&mt=1512998662&ip=2604:a880:800:10::128:e001&ck=ZIG8YuZuTnw&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bjZlLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002369&cp=QVNGVUFfUVNUSlhOOllFQzhYd0VyVWt2&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=B3F9CDA33912B55724D4DCD3D9850E4317AFE9EA.96250406BD8CF3B923DFD0F746EA149AA4ABD5E8&key=ck2&apps=animesync.tv'),
(301, '31', '0', '', '04', '', 'https://us1-sv-2-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=96137351a1344686&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n67&ms=nxu&mv=m&pl=48&ttl=transient&ei=p4cuWsHGJMbRqgW3vrCIDQ&driveid=a2QzckFzVk05V3lpZ0htYUhLNjA1ZGptTXJobWxZaGduRGd1bFplRnhLaz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488371407528981&mt=1512998727&ip=2604:a880:800:10::128:e001&ck=xqD_dfaHcjA&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bjY3Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002423&cp=QVNGVUFfUVRQRFhOOndtWl9kZHpFZGda&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=AA1A05E5B46EC5FCFCC5A0A200B05A23D73705B5.BBF07F0D71D7C9A8CB5D550C79791C62EDC5F778&key=ck2&apps=animesync.tv'),
(302, '31', '0', '', '05', '', 'https://us1-sv-20-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=818494079f5348d4&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szn76&ms=nxu&mv=m&pl=48&ttl=transient&ei=64cuWsXbHInCqgX3kKWIBg&driveid=emhOQjJvZE1zOHJJcTdsalEyaTBGaWlQZklmMmFHVDVFN3ZjY215dnYrWT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488383823699387&mt=1512998787&ip=2604:a880:800:10::128:e001&ck=OlHscmh3LNY&dom=aHR0cHM6Ly9yNC0tLXNuLWFiNXN6bjc2Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002491&cp=QVNGVUFfUVRXQlhOOk5oRHFjcmUyTUtY&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=3808C225AEFF7A3B286F71D0F938B65F136AEBDD.5FBED77727A7074F37616A9164EEC816BCE681C7&key=ck2&apps=animesync.tv'),
(303, '31', '0', '', '06', '', 'https://us1-sv-1-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=60d9e9128e34fd0e&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5szne7&ms=nxu&mv=m&pl=48&ttl=transient&ei=EIguWp_CHovAqwXK3LbABQ&driveid=MG5GYURZVm5wWHJ1aGRIM1ZMRkkxMFZ4ZyszSHFIUE52dVlseUl2eDJhWT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488374362852837&mt=1512998847&ip=2604:a880:800:10::128:e001&ck=C0HWwRDoEUo&dom=aHR0cHM6Ly9yMS0tLXNuLWFiNXN6bmU3Lmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002528&cp=QVNGVUFfUVVQSVhOOkI4RFV4UEhsRlJu&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=4E8C49DDF1CED9CCB56C44BB39CB0D9929DC26A1.B2F9F3AB8E8C1E628DAED0EA42E096B109EA8CFE&key=ck2&apps=animesync.tv'),
(304, '31', '0', '', '07', '', 'https://us1-sv-16-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=b0c586b651cd616e&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsr&ms=nxu&mv=m&pl=48&ttl=transient&ei=OoguWsn-M8WyqQX-rpSADQ&driveid=N2l6L2lJa0grVkVsTjZ4dFNIWW81ckZHTGExM3BnbjZiOVhocjZaNUE2VT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488366658195484&mt=1512998847&ip=2604:a880:800:10::128:e001&ck=YdH3NehlIuE&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNWw2bnNyLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002570&cp=QVNGVUFfUVVVQVhOOlh6RDNPaGRpSnJE&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=325DAA601ADEE84E8BD7EE9984210739CA0526BC.0CB212364FE68E6CC5E807134ED0A57DABB1C4A8&key=ck2&apps=animesync.tv'),
(305, '31', '0', '', '08', '', 'https://us1-sv-3-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=3e1b2dc833774d67&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6n6s&ms=nxu&mv=m&pl=48&ttl=transient&ei=YYguWsLvIILWqAX76a64Aw&driveid=SmRHc2VPS0RjY1AzbGFuSzN4cm9GMlBvU2xYMTZMVXR0b1VJMlFiQ3pyMD0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488368913344919&mt=1512998847&ip=2604:a880:800:10::128:e001&ck=POm-pPWlmTQ&dom=aHR0cHM6Ly9yNS0tLXNuLWFiNWw2bjZzLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002610&cp=QVNGVUFfUVZPQVhOOk9LaS1yTVNpblFQ&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=6AF454F3DAD7F2259869A5B3CF55818DFF415F9B.5884E560904AC330063DBF8AC9C5BE82A37BBF2D&key=ck2&apps=animesync.tv'),
(306, '31', '0', '', '09', '', 'https://us1-sv-22-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=6d5c5ab22eeb96ca&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzd&ms=nxu&mv=m&pl=48&ttl=transient&ei=e4guWrHSBo3uqgXCk6fwBA&driveid=aDcxdktsY3ZMT1VVWjdQQVYxOXNkbGlsT2kwMjZKUm1FdytkNFZWMkhPaz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488281851713007&mt=1512998907&ip=2604:a880:800:10::128:e001&ck=LOkJpaQsqCw&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNWw2bnpkLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002635&cp=QVNGVUFfUVZRRlhOOktLZ0hyelJwclp2&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=622AE98B1AB9F4AFF4A1F68D2164C72AA3A2D6A2.038CA6F27C67127D425163A7F2ADC5A6A78AE257&key=ck2&apps=animesync.tv'),
(307, '31', '0', '', '10', '', 'https://us1-sv-1-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=550572d6d47ef95a&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nzd&ms=nxu&mv=m&pl=48&ttl=transient&ei=pIguWsSdKMaRqwWBmr7IAQ&driveid=WGFjK2ZNUWlick9qU3c5VldyQXRCMGFWR2hEcUVjcGR2MHRkVlM4cFZZcz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488282435066087&mt=1512998907&ip=2604:a880:800:10::128:e001&ck=zsY_5WT6OTY&dom=aHR0cHM6Ly9yMi0tLXNuLWFiNWw2bnpkLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002676&cp=QVNGVUFfUVZVR1hOOnlvVV85WlY1UFFY&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=B449394F15D64AEAF70692FE7FB99EB2156D12B7.90D7987FFB9ED2FEB043BE13AE0ED1020E7E98B2&key=ck2&apps=animesync.tv'),
(308, '31', '0', '', '11', '', 'https://us1-sv-14-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=1a40fe6afe8d1741&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nsk&ms=nxu&mv=m&pl=48&ttl=transient&ei=2oguWuOxEIfAqgX8-LTIDw&driveid=YjVKOFlEUWE0SGI0R3Z1VVNKVS9nWjdCeEdSZ0ZGSnZ2aFBuVDVZdW1Bdz0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488284875343027&mt=1512999025&ip=2604:a880:800:10::128:e001&ck=u8_NN9DsF7Q&dom=aHR0cHM6Ly9yMy0tLXNuLWFiNWw2bnNrLmdvb2dsZXZpZGVvLmNvbS8=&ipbits=0&expire=1513002730&cp=QVNGVUFfUVdRQVhOOnQ2X0xRMFpwRzZQ&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=075CF12700DDFE99F04400025FB1F3EA22FED99F.7802525DB4CE1DCF7A4A6F3D04D85A7A4F491125&key=ck2&apps=animesync.tv'),
(309, '31', '0', '', '12', '', 'https://us1-sv-20-streaming.animesyncvideo.com/v1/streaming/proxy-gd/?id=a1e2088851642c05&itag=22&source=webdrive&requiressl=yes&mm=30&mn=sn-ab5l6nlz&ms=nxu&mv=m&pl=48&ttl=transient&ei=HYkuWsTeMdebqQWRqrjIDg&driveid=d2oxM1hJVXpKVVlwMkkwVFYyY1ZBTmZiZUtkSTJHL21nVjVVQ2ltQVVRVT0=&api=animesync.tv&app=explorer&mime=video/mp4&lmt=1488287072430496&mt=1512999084&ip=2604:a880:800:10::128:e001&ck=DdU2tQFin7E&dom=aHR0cHM6Ly9yMTEtLS1zbi1hYjVsNm5sei5nb29nbGV2aWRlby5jb20v&ipbits=0&expire=1513002798&cp=QVNGVUFfUVdXSVhOOkN6UTJ3VkpmbzZE&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,ttl,ei,driveid,app,mime,lmt,cp&signature=843E629E0FEE4B02A2908C500409933EE958AC28.4B6C4731C0ECCCB600649E3C30C16F80AE4A7EF7&key=ck2&apps=animesync.tv'),
(310, '32', '11', '', '01', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1149396038526822_1114233444226826240_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=804411a2d5e3c430001aed8d6a9ccc4b&oe=5A2EBDD6'),
(311, '32', '1', '', '02', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1751170178522252_885040546064629760_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=e1e44babe1f54ffc46891f8872e25dc5&oe=5A2EBCA2'),
(312, '32', '0', '', '03', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_892189084264872_7738477142547103744_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=55b81b6d5412ed402d3b3aa6dd0644f6&oe=5A2EB0C5'),
(313, '32', '0', '', '04', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1946476382270185_5101833630481645568_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=eb8f61f79b1527b2ee0bb2409c2420fa&oe=5A2EB285'),
(314, '32', '1', '', '05', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_142203233170137_9084167125974646784_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=7b7cd2c8de205df7df93cf8b2d2675c3&oe=5A2EBA6C'),
(315, '32', '0', '', '06', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_2001804046775428_2066912088751603712_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=75a42cb4f7a70949d671f5d48f86393d&oe=5A2EB317'),
(316, '32', '0', '', '07', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1951453118429818_8688546250842177536_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=8cdc395e643b00eeba6b8441010258ee&oe=5A2EBBBC'),
(317, '32', '0', '', '08', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1767050933597968_2239546860400279552_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=b629d747134f81e7f295da71f9a57ce3&oe=5A2EBB4B'),
(318, '32', '1', '', '09', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_518069668551310_6801254002261491712_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=0d3035463b2c7c03877aca796dac0bfd&oe=5A2E9E80');
