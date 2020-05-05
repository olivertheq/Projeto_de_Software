-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 30-Abr-2020 às 00:01
-- Versão do servidor: 10.1.44-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_bairros`
--

CREATE TABLE `tbl_bairros` (
  `COD_BAIRRO` int(11) NOT NULL,
  `NOME_BAIRRO` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_bairros`
--

INSERT INTO `tbl_bairros` (`COD_BAIRRO`, `NOME_BAIRRO`) VALUES
(1, 'Recanto'),
(2, 'Primavera'),
(3, 'Alvorada'),
(4, 'Funcionarios'),
(5, 'Alegre'),
(6, 'Cruzeirinho'),
(7, 'Centro'),
(8, 'Ana Moura'),
(9, 'Ana Rita'),
(10, 'Belem'),
(11, 'Padre Eustaquio'),
(12, 'Ouro Preto'),
(13, 'Barro Preto'),
(14, 'Caladinho'),
(15, 'Santa Maria'),
(16, 'Não sei'),
(17, 'Imbaúbas'),
(18, 'Iguaçu'),
(19, 'Bom Retiro'),
(20, 'Jardim Ângela (Zona Leste)'),
(21, 'Cidade Nobre');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cidades`
--

CREATE TABLE `tbl_cidades` (
  `COD_CIDADE` int(11) NOT NULL,
  `NOME_CIDADE` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_cidades`
--

INSERT INTO `tbl_cidades` (`COD_CIDADE`, `NOME_CIDADE`) VALUES
(1, 'Timóteo'),
(2, 'Belo Horizonte'),
(3, 'Ipatinga'),
(4, 'Ipaba'),
(5, 'Ipanema'),
(6, 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_combustivel`
--

CREATE TABLE `tbl_combustivel` (
  `COD_COMBUSTIVEL` int(11) NOT NULL,
  `TIPO_COMBUSTIVEL` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_combustivel`
--

INSERT INTO `tbl_combustivel` (`COD_COMBUSTIVEL`, `TIPO_COMBUSTIVEL`) VALUES
(1, 'Aditivada'),
(2, 'Comum'),
(3, 'Aditivada2'),
(4, 'Comum2'),
(5, 'Aditivada3'),
(6, 'Comum3'),
(7, 'Aditivada4'),
(8, 'Comum4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_estados`
--

CREATE TABLE `tbl_estados` (
  `COD_ESTADO` int(11) NOT NULL,
  `SIGLA` varchar(2) NOT NULL,
  `NOME_ESTADO` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_estados`
--

INSERT INTO `tbl_estados` (`COD_ESTADO`, `SIGLA`, `NOME_ESTADO`) VALUES
(1, 'MG', 'Minas Gerais'),
(2, 'SP', 'São Paulo'),
(3, 'RJ', 'Rio de Janeiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_posto`
--

CREATE TABLE `tbl_posto` (
  `COD_POSTO` int(11) NOT NULL,
  `NOME_POSTO` varchar(40) NOT NULL,
  `COD_TIPO_USUARIO` int(11) NOT NULL,
  `SENHA` varchar(40) NOT NULL,
  `CNPJ` varchar(14) NOT NULL,
  `BANDEIRA` varchar(20) DEFAULT NULL,
  `CEP` int(11) NOT NULL,
  `COD_ESTADO` int(11) NOT NULL,
  `COD_CIDADE` int(11) NOT NULL,
  `COD_BAIRRO` int(11) NOT NULL,
  `COD_RUA` int(11) NOT NULL,
  `NUM_POSTO` int(11) NOT NULL,
  `TELEFONE` int(11) NOT NULL,
  `EMAIL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_posto`
--

INSERT INTO `tbl_posto` (`COD_POSTO`, `NOME_POSTO`, `COD_TIPO_USUARIO`, `SENHA`, `CNPJ`, `BANDEIRA`, `CEP`, `COD_ESTADO`, `COD_CIDADE`, `COD_BAIRRO`, `COD_RUA`, `NUM_POSTO`, `TELEFONE`, `EMAIL`) VALUES
(1, 'Posto GT', 3, 'posto1', '64587364593465', 'Ipiranga', 789456123, 1, 1, 1, 1, 89, 987654321, 0),
(2, 'Posto GT2', 3, 'posto2', '64587364593123', 'Petrobras', 780986123, 2, 2, 2, 2, 54, 159753246, 0),
(9, 'Posto Veraneio 3', 3, 'postoveraneio3', '00000000000000', 'Rede Veraneio', 35160235, 1, 3, 19, 10, 0, 123456789, 0),
(10, 'Posto Fama', 3, 'postofama', '00000000000000', 'Rede Riva', 35160225, 1, 3, 19, 10, 0, 159753246, 0),
(11, 'Posto Shell', 3, 'postoshell', '00000000000000', 'Shell', 35160294, 1, 3, 19, 10, 0, 145726398, 0),
(12, 'Posto Gentil', 3, 'postogentil', '00000000000000', 'Gentil', 35164245, 1, 3, 19, 10, 0, 321654987, 0),
(13, 'Posto Ipiranga', 3, 'postoIpiranga', '00000000000000', 'Gentil', 35164245, 1, 3, 19, 10, 0, 741963258, 0),
(14, 'Posto Auto Giro', 3, 'postoautogiro', '00000000000000', 'Gentil', 35164245, 1, 3, 19, 10, 0, 987654321, 0),
(15, 'Posto de Teste', 3, 'postoautogiro', '00000000000000', '', 35164245, 1, 3, 19, 10, 0, 159786423, 0),
(16, 'Posto GT4', 3, 'gt4', '00000000000000', '', 35164245, 1, 3, 19, 10, 0, 123456789, 0),
(17, 'Posto Teste 01', 3, 'gt4', '00000000000000', 'Petrobras', 35164245, 1, 3, 19, 10, 0, 123456789, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_precos`
--

CREATE TABLE `tbl_precos` (
  `COD_USUARIO_POSTO` int(11) NOT NULL,
  `PRECO` float NOT NULL,
  `DATA_ATT` datetime NOT NULL,
  `COD_POSTO` int(11) NOT NULL,
  `COD_COMBUSTIVEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_precos`
--

INSERT INTO `tbl_precos` (`COD_USUARIO_POSTO`, `PRECO`, `DATA_ATT`, `COD_POSTO`, `COD_COMBUSTIVEL`) VALUES
(1, 5.5, '1995-12-15 11:35:55', 2, 2),
(1, 4.7, '1995-12-17 11:35:35', 9, 1),
(1, 4.8, '1995-12-17 11:35:36', 10, 1),
(1, 4.9, '1995-12-17 11:35:37', 11, 1),
(1, 3.75, '1995-12-17 11:35:38', 11, 1),
(1, 3.45, '1995-12-17 11:35:39', 12, 1),
(1, 3.98, '1995-12-17 11:35:40', 13, 1),
(1, 3.9, '1995-12-17 11:35:41', 14, 1),
(1, 3.99, '1995-12-17 11:35:42', 15, 1),
(1, 6.25, '1995-12-17 11:35:43', 16, 1),
(1, 6.29, '1995-12-17 11:35:44', 17, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_promo`
--

CREATE TABLE `tbl_promo` (
  `COD_PROMO` int(11) NOT NULL,
  `COD_USUARIO_POSTO` int(11) NOT NULL,
  `COD_POSTO` int(11) NOT NULL,
  `CONTEUDO_PROMO` varchar(255) NOT NULL,
  `DATA_INICIO` datetime NOT NULL,
  `DATA_FIM` datetime NOT NULL,
  `DATA_ATT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_promo`
--

INSERT INTO `tbl_promo` (`COD_PROMO`, `COD_USUARIO_POSTO`, `COD_POSTO`, `CONTEUDO_PROMO`, `DATA_INICIO`, `DATA_FIM`, `DATA_ATT`) VALUES
(1, 1, 1, '10% de desconto', '1995-12-17 10:20:34', '1995-12-17 10:25:34', '1995-12-17 10:35:34'),
(2, 1, 2, '10% de desconto', '1995-12-18 10:20:35', '1995-12-19 10:20:34', '1995-11-17 10:30:34'),
(3, 1, 1, '10% de desconto', '1995-12-17 10:20:34', '1995-12-17 10:25:34', '1995-12-17 10:35:34'),
(4, 1, 2, '10% de desconto', '1995-12-18 10:20:35', '1995-12-19 10:20:34', '1995-11-17 10:30:34'),
(5, 1, 1, '10% de desconto', '1995-12-17 10:20:34', '1995-12-17 10:25:34', '1995-12-17 10:35:34'),
(6, 1, 2, '10% de desconto', '1995-12-18 10:20:35', '1995-12-19 10:20:34', '1995-11-17 10:30:34'),
(7, 1, 1, '10% de desconto', '1995-12-17 10:20:34', '1995-12-17 10:25:34', '1995-12-17 10:35:34'),
(8, 1, 2, '10% de desconto', '1995-12-18 10:20:35', '1995-12-19 10:20:34', '1995-11-17 10:30:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ruas`
--

CREATE TABLE `tbl_ruas` (
  `COD_RUA` int(11) NOT NULL,
  `NOME_RUA` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_ruas`
--

INSERT INTO `tbl_ruas` (`COD_RUA`, `NOME_RUA`) VALUES
(1, 'Av. Luiz Ramires'),
(2, 'Rua Camelia'),
(3, 'Waldomiro Duarte'),
(4, 'Rua Rosa'),
(5, 'Av Acesita'),
(6, 'Av Brasil'),
(7, 'Av JK'),
(8, 'Rua H'),
(9, 'Rua 123'),
(10, 'Rua A'),
(11, 'Av. Afonso Pena'),
(12, 'Av. Teodoro'),
(13, 'Rua Cravo'),
(14, 'Rua Z'),
(15, 'Rua J'),
(16, 'Av Kiyoshi tsunawaki'),
(17, 'Rua Rodrigues Arzão'),
(18, 'Rua dos Caiapós'),
(19, 'Rua Salvador de Mesquita'),
(20, 'Rua Albert Einstein'),
(22, 'Avenida Paladium'),
(23, 'Rua Potássio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_tipo_usuario`
--

CREATE TABLE `tbl_tipo_usuario` (
  `COD_TIPO_USUARIO` int(11) NOT NULL,
  `TIPO_USUARIO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_tipo_usuario`
--

INSERT INTO `tbl_tipo_usuario` (`COD_TIPO_USUARIO`, `TIPO_USUARIO`) VALUES
(1, 'Administrador'),
(2, 'Usuario Posto'),
(3, 'Posto'),
(4, 'Usuario APP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_usuario_app`
--

CREATE TABLE `tbl_usuario_app` (
  `COD_USUARIO_APP` int(11) NOT NULL,
  `NOME_USUARIO` varchar(60) NOT NULL,
  `USERNAME` varchar(40) NOT NULL,
  `COD_TIPO_USUARIO` int(11) NOT NULL,
  `SENHA` varchar(40) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `TELEFONE` text NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `DATA_NASC` date NOT NULL,
  `CEP` varchar(8) NOT NULL,
  `COD_ESTADO` int(11) NOT NULL,
  `COD_CIDADE` int(11) NOT NULL,
  `COD_BAIRRO` int(11) NOT NULL,
  `COD_RUA` int(11) NOT NULL,
  `NUM_RESIDENCIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_usuario_app`
--

INSERT INTO `tbl_usuario_app` (`COD_USUARIO_APP`, `NOME_USUARIO`, `USERNAME`, `COD_TIPO_USUARIO`, `SENHA`, `EMAIL`, `TELEFONE`, `CPF`, `DATA_NASC`, `CEP`, `COD_ESTADO`, `COD_CIDADE`, `COD_BAIRRO`, `COD_RUA`, `NUM_RESIDENCIA`) VALUES
(1, 'Sergio Filho', 'serjaum', 4, 'sergio', 'sergiofilhotx@gmail.com', '', '74523698714', '2001-05-26', '35163150', 1, 1, 1, 1, 76),
(2, 'Sergio Filho', 'serjaum', 4, 'sergio', 'sergiofilhotx@gmail.com', '', '74523698714', '2001-05-26', '35163150', 1, 1, 1, 1, 76),
(3, 'Sergio Filho', 'serjaum', 4, 'sergio', 'sergiofilhotx@gmail.com', '', '74523698714', '2001-05-26', '35163150', 1, 1, 1, 1, 76),
(4, 'Sergio Filho', 'serjaum', 4, 'sergio', 'sergiofilhotx@gmail.com', '', '74523698714', '2001-05-26', '35163150', 1, 1, 1, 1, 76),
(5, 'Marlon Felipe Martins de Oliveira Teste 1', 'Marlon', 4, '123456', 'marlon81785@gmail.com', '(31) 99124-9623', '11835962602', '1997-06-20', '35160276', 1, 3, 16, 16, 18),
(6, 'USIARIO ESTE TEST APP', 'USIARIO ESTE TEST APP', 4, '123456', 'fake@fake.com', '(31) 99124-9623', '11835953603', '1997-06-20', '35160276', 1, 3, 17, 17, 75),
(7, 'usuario teste 2', 'usuario teste 2', 4, '123456', 'o@o.com', '(31) 99124-9623', '24054137016', '2020-01-01', '35162039', 1, 3, 18, 18, 95),
(8, 'josefina de jesus', 'josefina de jesus', 4, '123456', 'kaelum@fsfx.com', '(31) 99124-9623', '40566631067', '1997-06-20', '35160276', 1, 3, 17, 17, 75),
(9, 'Sérgio ', 'Sérgio ', 4, 'serjaum', 'strongybr@outlook.com', '(31) 98541-1278', '08618768065', '2001-06-14', '03985010', 2, 6, 20, 19, 25),
(10, 'Cristiane Alves de Oliveira', 'Cristiane Alves de Oliveira', 4, '516018', 'cristiane.oliveir@bol.com.br', '(31) 98780-0354', '03878173601', '1919-03-18', '35162351', 1, 3, 21, 20, 143),
(11, 'mamajsj', 'mamajsj', 4, '123456', 'opy@opy.com', '(31) 99124-9623', '17197252091', '1997-06-20', '35160273', 1, 3, 17, 23, 75),
(12, 'jshvjsksjdjs', 'jshvjsksjdjs', 4, '123456', 'emailb@emailb.com', '(31) 99124-9623', '88515969050', '1995-06-20', '35160276', 1, 3, 17, 17, 75);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_usuario_posto`
--

CREATE TABLE `tbl_usuario_posto` (
  `COD_USUARIO_POSTO` int(11) NOT NULL,
  `NOME_USUARIO` varchar(60) NOT NULL,
  `USERNAME` varchar(40) NOT NULL,
  `COD_TIPO_USUARIO` int(11) NOT NULL,
  `SENHA` varchar(40) NOT NULL,
  `COD_POSTO` int(11) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `DATA_NASC` date NOT NULL,
  `CEP` varchar(8) NOT NULL,
  `COD_ESTADO` int(11) NOT NULL,
  `COD_CIDADE` int(11) NOT NULL,
  `COD_BAIRRO` int(11) NOT NULL,
  `COD_RUA` int(11) NOT NULL,
  `NUM_RESIDENCIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_usuario_posto`
--

INSERT INTO `tbl_usuario_posto` (`COD_USUARIO_POSTO`, `NOME_USUARIO`, `USERNAME`, `COD_TIPO_USUARIO`, `SENHA`, `COD_POSTO`, `EMAIL`, `CPF`, `DATA_NASC`, `CEP`, `COD_ESTADO`, `COD_CIDADE`, `COD_BAIRRO`, `COD_RUA`, `NUM_RESIDENCIA`) VALUES
(1, 'Sergio Teixeira', 'serjo', 1, 'sergio2', 1, 'sergiocosta@gmail.com', '74523691234', '2002-08-17', '35163160', 2, 2, 2, 2, 56),
(2, 'Sergio Teixeira', 'serjo', 1, 'sergio2', 1, 'sergiocosta@gmail.com', '74523691234', '2002-08-17', '35163160', 2, 2, 2, 2, 56),
(3, 'Sergio Teixeira', 'serjo', 1, 'sergio2', 1, 'sergiocosta@gmail.com', '74523691234', '2002-08-17', '35163160', 2, 2, 2, 2, 56),
(4, 'Sergio Teixeira', 'serjo', 1, 'sergio2', 1, 'sergiocosta@gmail.com', '74523691234', '2002-08-17', '35163160', 2, 2, 2, 2, 56);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_informacoes_posto`
-- (See below for the actual view)
--
CREATE TABLE `v_informacoes_posto` (
`NOME_POSTO` varchar(40)
,`TIPO_USUARIO` varchar(30)
,`SENHA` varchar(40)
,`CNPJ` varchar(14)
,`BANDEIRA` varchar(20)
,`CEP` int(11)
,`NOME_ESTADO` varchar(40)
,`NOME_CIDADE` varchar(40)
,`NOME_BAIRRO` varchar(60)
,`NOME_RUA` varchar(60)
,`NUM_POSTO` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_informacoes_promo`
-- (See below for the actual view)
--
CREATE TABLE `v_informacoes_promo` (
`NOME_USUARIO` varchar(60)
,`NOME_POSTO` varchar(40)
,`CONTEUDO_PROMO` varchar(255)
,`DATA_INICIO` datetime
,`DATA_FIM` datetime
,`DATA_ATT` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_informacoes_usuario_app`
-- (See below for the actual view)
--
CREATE TABLE `v_informacoes_usuario_app` (
`NOME_USUARIO` varchar(60)
,`USERNAME` varchar(40)
,`TIPO_USUARIO` varchar(30)
,`SENHA` varchar(40)
,`EMAIL` varchar(60)
,`TELEFONE` text
,`CPF` varchar(11)
,`DATA_NASC` date
,`CEP` varchar(8)
,`NOME_ESTADO` varchar(40)
,`NOME_CIDADE` varchar(40)
,`NOME_BAIRRO` varchar(60)
,`NOME_RUA` varchar(60)
,`NUM_RESIDENCIA` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_informacoes_usuario_posto`
-- (See below for the actual view)
--
CREATE TABLE `v_informacoes_usuario_posto` (
`NOME_USUARIO` varchar(60)
,`USERNAME` varchar(40)
,`TIPO_USUARIO` varchar(30)
,`SENHA` varchar(40)
,`NOME_POSTO` varchar(40)
,`EMAIL` varchar(60)
,`CPF` varchar(11)
,`DATA_NASC` date
,`CEP` varchar(8)
,`NOME_ESTADO` varchar(40)
,`NOME_CIDADE` varchar(40)
,`NOME_BAIRRO` varchar(60)
,`NOME_RUA` varchar(60)
,`NUM_RESIDENCIA` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_informacoes_usuario_preco`
-- (See below for the actual view)
--
CREATE TABLE `v_informacoes_usuario_preco` (
`NOME_USUARIO` varchar(60)
,`PRECO` float
,`DATA_ATT` datetime
,`TIPO_COMBUSTIVEL` varchar(40)
,`NOME_POSTO` varchar(40)
);

-- --------------------------------------------------------

--
-- Structure for view `v_informacoes_posto`
--
DROP TABLE IF EXISTS `v_informacoes_posto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_informacoes_posto`  AS  select `tbl_posto`.`NOME_POSTO` AS `NOME_POSTO`,`tbl_tipo_usuario`.`TIPO_USUARIO` AS `TIPO_USUARIO`,`tbl_posto`.`SENHA` AS `SENHA`,`tbl_posto`.`CNPJ` AS `CNPJ`,`tbl_posto`.`BANDEIRA` AS `BANDEIRA`,`tbl_posto`.`CEP` AS `CEP`,`tbl_estados`.`NOME_ESTADO` AS `NOME_ESTADO`,`tbl_cidades`.`NOME_CIDADE` AS `NOME_CIDADE`,`tbl_bairros`.`NOME_BAIRRO` AS `NOME_BAIRRO`,`tbl_ruas`.`NOME_RUA` AS `NOME_RUA`,`tbl_posto`.`NUM_POSTO` AS `NUM_POSTO` from (((((`tbl_posto` join `tbl_tipo_usuario` on((`tbl_posto`.`COD_TIPO_USUARIO` = `tbl_tipo_usuario`.`COD_TIPO_USUARIO`))) join `tbl_estados` on((`tbl_posto`.`COD_ESTADO` = `tbl_estados`.`COD_ESTADO`))) join `tbl_cidades` on((`tbl_posto`.`COD_CIDADE` = `tbl_cidades`.`COD_CIDADE`))) join `tbl_bairros` on((`tbl_posto`.`COD_BAIRRO` = `tbl_bairros`.`COD_BAIRRO`))) join `tbl_ruas` on((`tbl_posto`.`COD_RUA` = `tbl_ruas`.`COD_RUA`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_informacoes_promo`
--
DROP TABLE IF EXISTS `v_informacoes_promo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_informacoes_promo`  AS  select `tbl_usuario_posto`.`NOME_USUARIO` AS `NOME_USUARIO`,`tbl_posto`.`NOME_POSTO` AS `NOME_POSTO`,`tbl_promo`.`CONTEUDO_PROMO` AS `CONTEUDO_PROMO`,`tbl_promo`.`DATA_INICIO` AS `DATA_INICIO`,`tbl_promo`.`DATA_FIM` AS `DATA_FIM`,`tbl_promo`.`DATA_ATT` AS `DATA_ATT` from ((`tbl_promo` join `tbl_usuario_posto` on((`tbl_usuario_posto`.`COD_USUARIO_POSTO` = `tbl_promo`.`COD_USUARIO_POSTO`))) join `tbl_posto` on((`tbl_posto`.`COD_POSTO` = `tbl_promo`.`COD_POSTO`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_informacoes_usuario_app`
--
DROP TABLE IF EXISTS `v_informacoes_usuario_app`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_informacoes_usuario_app`  AS  select `tbl_usuario_app`.`NOME_USUARIO` AS `NOME_USUARIO`,`tbl_usuario_app`.`USERNAME` AS `USERNAME`,`tbl_tipo_usuario`.`TIPO_USUARIO` AS `TIPO_USUARIO`,`tbl_usuario_app`.`SENHA` AS `SENHA`,`tbl_usuario_app`.`EMAIL` AS `EMAIL`,`tbl_usuario_app`.`TELEFONE` AS `TELEFONE`,`tbl_usuario_app`.`CPF` AS `CPF`,`tbl_usuario_app`.`DATA_NASC` AS `DATA_NASC`,`tbl_usuario_app`.`CEP` AS `CEP`,`tbl_estados`.`NOME_ESTADO` AS `NOME_ESTADO`,`tbl_cidades`.`NOME_CIDADE` AS `NOME_CIDADE`,`tbl_bairros`.`NOME_BAIRRO` AS `NOME_BAIRRO`,`tbl_ruas`.`NOME_RUA` AS `NOME_RUA`,`tbl_usuario_app`.`NUM_RESIDENCIA` AS `NUM_RESIDENCIA` from (((((`tbl_usuario_app` join `tbl_tipo_usuario` on((`tbl_usuario_app`.`COD_TIPO_USUARIO` = `tbl_tipo_usuario`.`COD_TIPO_USUARIO`))) join `tbl_estados` on((`tbl_usuario_app`.`COD_ESTADO` = `tbl_estados`.`COD_ESTADO`))) join `tbl_cidades` on((`tbl_usuario_app`.`COD_CIDADE` = `tbl_cidades`.`COD_CIDADE`))) join `tbl_bairros` on((`tbl_usuario_app`.`COD_BAIRRO` = `tbl_bairros`.`COD_BAIRRO`))) join `tbl_ruas` on((`tbl_usuario_app`.`COD_RUA` = `tbl_ruas`.`COD_RUA`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_informacoes_usuario_posto`
--
DROP TABLE IF EXISTS `v_informacoes_usuario_posto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_informacoes_usuario_posto`  AS  select `tbl_usuario_posto`.`NOME_USUARIO` AS `NOME_USUARIO`,`tbl_usuario_posto`.`USERNAME` AS `USERNAME`,`tbl_tipo_usuario`.`TIPO_USUARIO` AS `TIPO_USUARIO`,`tbl_usuario_posto`.`SENHA` AS `SENHA`,`tbl_posto`.`NOME_POSTO` AS `NOME_POSTO`,`tbl_usuario_posto`.`EMAIL` AS `EMAIL`,`tbl_usuario_posto`.`CPF` AS `CPF`,`tbl_usuario_posto`.`DATA_NASC` AS `DATA_NASC`,`tbl_usuario_posto`.`CEP` AS `CEP`,`tbl_estados`.`NOME_ESTADO` AS `NOME_ESTADO`,`tbl_cidades`.`NOME_CIDADE` AS `NOME_CIDADE`,`tbl_bairros`.`NOME_BAIRRO` AS `NOME_BAIRRO`,`tbl_ruas`.`NOME_RUA` AS `NOME_RUA`,`tbl_usuario_posto`.`NUM_RESIDENCIA` AS `NUM_RESIDENCIA` from ((((((`tbl_usuario_posto` join `tbl_tipo_usuario` on((`tbl_usuario_posto`.`COD_TIPO_USUARIO` = `tbl_tipo_usuario`.`COD_TIPO_USUARIO`))) join `tbl_estados` on((`tbl_usuario_posto`.`COD_ESTADO` = `tbl_estados`.`COD_ESTADO`))) join `tbl_cidades` on((`tbl_usuario_posto`.`COD_CIDADE` = `tbl_cidades`.`COD_CIDADE`))) join `tbl_bairros` on((`tbl_usuario_posto`.`COD_BAIRRO` = `tbl_bairros`.`COD_BAIRRO`))) join `tbl_ruas` on((`tbl_usuario_posto`.`COD_RUA` = `tbl_ruas`.`COD_RUA`))) join `tbl_posto` on((`tbl_usuario_posto`.`COD_POSTO` = `tbl_posto`.`COD_POSTO`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_informacoes_usuario_preco`
--
DROP TABLE IF EXISTS `v_informacoes_usuario_preco`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_informacoes_usuario_preco`  AS  select `tbl_usuario_posto`.`NOME_USUARIO` AS `NOME_USUARIO`,`tbl_precos`.`PRECO` AS `PRECO`,`tbl_precos`.`DATA_ATT` AS `DATA_ATT`,`tbl_combustivel`.`TIPO_COMBUSTIVEL` AS `TIPO_COMBUSTIVEL`,`tbl_posto`.`NOME_POSTO` AS `NOME_POSTO` from (((`tbl_usuario_posto` join `tbl_precos` on((`tbl_usuario_posto`.`COD_USUARIO_POSTO` = `tbl_precos`.`COD_USUARIO_POSTO`))) join `tbl_posto` on((`tbl_posto`.`COD_POSTO` = `tbl_precos`.`COD_POSTO`))) join `tbl_combustivel` on((`tbl_combustivel`.`COD_COMBUSTIVEL` = `tbl_precos`.`COD_COMBUSTIVEL`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bairros`
--
ALTER TABLE `tbl_bairros`
  ADD PRIMARY KEY (`COD_BAIRRO`);

--
-- Indexes for table `tbl_cidades`
--
ALTER TABLE `tbl_cidades`
  ADD PRIMARY KEY (`COD_CIDADE`);

--
-- Indexes for table `tbl_combustivel`
--
ALTER TABLE `tbl_combustivel`
  ADD PRIMARY KEY (`COD_COMBUSTIVEL`);

--
-- Indexes for table `tbl_estados`
--
ALTER TABLE `tbl_estados`
  ADD PRIMARY KEY (`COD_ESTADO`);

--
-- Indexes for table `tbl_posto`
--
ALTER TABLE `tbl_posto`
  ADD PRIMARY KEY (`COD_POSTO`),
  ADD KEY `COD_ESTADO` (`COD_ESTADO`),
  ADD KEY `COD_BAIRRO` (`COD_BAIRRO`),
  ADD KEY `COD_CIDADE` (`COD_CIDADE`),
  ADD KEY `COD_TIPO_USUARIO` (`COD_TIPO_USUARIO`),
  ADD KEY `COD_RUA` (`COD_RUA`);

--
-- Indexes for table `tbl_precos`
--
ALTER TABLE `tbl_precos`
  ADD PRIMARY KEY (`COD_USUARIO_POSTO`,`DATA_ATT`),
  ADD KEY `COD_COMBUSTIVEL` (`COD_COMBUSTIVEL`),
  ADD KEY `COD_POSTO` (`COD_POSTO`);

--
-- Indexes for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`COD_PROMO`),
  ADD KEY `COD_USUARIO_POSTO` (`COD_USUARIO_POSTO`),
  ADD KEY `COD_POSTO` (`COD_POSTO`);

--
-- Indexes for table `tbl_ruas`
--
ALTER TABLE `tbl_ruas`
  ADD PRIMARY KEY (`COD_RUA`);

--
-- Indexes for table `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  ADD PRIMARY KEY (`COD_TIPO_USUARIO`);

--
-- Indexes for table `tbl_usuario_app`
--
ALTER TABLE `tbl_usuario_app`
  ADD PRIMARY KEY (`COD_USUARIO_APP`),
  ADD KEY `COD_ESTADO` (`COD_ESTADO`),
  ADD KEY `COD_BAIRRO` (`COD_BAIRRO`),
  ADD KEY `COD_CIDADE` (`COD_CIDADE`),
  ADD KEY `COD_TIPO_USUARIO` (`COD_TIPO_USUARIO`),
  ADD KEY `COD_RUA` (`COD_RUA`);

--
-- Indexes for table `tbl_usuario_posto`
--
ALTER TABLE `tbl_usuario_posto`
  ADD PRIMARY KEY (`COD_USUARIO_POSTO`),
  ADD KEY `COD_ESTADO` (`COD_ESTADO`),
  ADD KEY `COD_BAIRRO` (`COD_BAIRRO`),
  ADD KEY `COD_CIDADE` (`COD_CIDADE`),
  ADD KEY `COD_TIPO_USUARIO` (`COD_TIPO_USUARIO`),
  ADD KEY `COD_RUA` (`COD_RUA`),
  ADD KEY `COD_POSTO` (`COD_POSTO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bairros`
--
ALTER TABLE `tbl_bairros`
  MODIFY `COD_BAIRRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_cidades`
--
ALTER TABLE `tbl_cidades`
  MODIFY `COD_CIDADE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_combustivel`
--
ALTER TABLE `tbl_combustivel`
  MODIFY `COD_COMBUSTIVEL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_estados`
--
ALTER TABLE `tbl_estados`
  MODIFY `COD_ESTADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_posto`
--
ALTER TABLE `tbl_posto`
  MODIFY `COD_POSTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `COD_PROMO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_ruas`
--
ALTER TABLE `tbl_ruas`
  MODIFY `COD_RUA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  MODIFY `COD_TIPO_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_usuario_app`
--
ALTER TABLE `tbl_usuario_app`
  MODIFY `COD_USUARIO_APP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_usuario_posto`
--
ALTER TABLE `tbl_usuario_posto`
  MODIFY `COD_USUARIO_POSTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbl_posto`
--
ALTER TABLE `tbl_posto`
  ADD CONSTRAINT `tbl_posto_ibfk_1` FOREIGN KEY (`COD_ESTADO`) REFERENCES `tbl_estados` (`COD_ESTADO`),
  ADD CONSTRAINT `tbl_posto_ibfk_2` FOREIGN KEY (`COD_BAIRRO`) REFERENCES `tbl_bairros` (`COD_BAIRRO`),
  ADD CONSTRAINT `tbl_posto_ibfk_3` FOREIGN KEY (`COD_CIDADE`) REFERENCES `tbl_cidades` (`COD_CIDADE`),
  ADD CONSTRAINT `tbl_posto_ibfk_4` FOREIGN KEY (`COD_TIPO_USUARIO`) REFERENCES `tbl_tipo_usuario` (`COD_TIPO_USUARIO`),
  ADD CONSTRAINT `tbl_posto_ibfk_5` FOREIGN KEY (`COD_RUA`) REFERENCES `tbl_ruas` (`COD_RUA`);

--
-- Limitadores para a tabela `tbl_precos`
--
ALTER TABLE `tbl_precos`
  ADD CONSTRAINT `tbl_precos_ibfk_1` FOREIGN KEY (`COD_COMBUSTIVEL`) REFERENCES `tbl_combustivel` (`COD_COMBUSTIVEL`),
  ADD CONSTRAINT `tbl_precos_ibfk_2` FOREIGN KEY (`COD_POSTO`) REFERENCES `tbl_posto` (`COD_POSTO`),
  ADD CONSTRAINT `tbl_precos_ibfk_3` FOREIGN KEY (`COD_USUARIO_POSTO`) REFERENCES `tbl_usuario_posto` (`COD_USUARIO_POSTO`);

--
-- Limitadores para a tabela `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD CONSTRAINT `tbl_promo_ibfk_1` FOREIGN KEY (`COD_USUARIO_POSTO`) REFERENCES `tbl_usuario_posto` (`COD_USUARIO_POSTO`),
  ADD CONSTRAINT `tbl_promo_ibfk_2` FOREIGN KEY (`COD_POSTO`) REFERENCES `tbl_posto` (`COD_POSTO`);

--
-- Limitadores para a tabela `tbl_usuario_app`
--
ALTER TABLE `tbl_usuario_app`
  ADD CONSTRAINT `tbl_usuario_app_ibfk_1` FOREIGN KEY (`COD_ESTADO`) REFERENCES `tbl_estados` (`COD_ESTADO`),
  ADD CONSTRAINT `tbl_usuario_app_ibfk_2` FOREIGN KEY (`COD_BAIRRO`) REFERENCES `tbl_bairros` (`COD_BAIRRO`),
  ADD CONSTRAINT `tbl_usuario_app_ibfk_3` FOREIGN KEY (`COD_CIDADE`) REFERENCES `tbl_cidades` (`COD_CIDADE`),
  ADD CONSTRAINT `tbl_usuario_app_ibfk_4` FOREIGN KEY (`COD_TIPO_USUARIO`) REFERENCES `tbl_tipo_usuario` (`COD_TIPO_USUARIO`),
  ADD CONSTRAINT `tbl_usuario_app_ibfk_5` FOREIGN KEY (`COD_RUA`) REFERENCES `tbl_ruas` (`COD_RUA`);

--
-- Limitadores para a tabela `tbl_usuario_posto`
--
ALTER TABLE `tbl_usuario_posto`
  ADD CONSTRAINT `tbl_usuario_posto_ibfk_1` FOREIGN KEY (`COD_ESTADO`) REFERENCES `tbl_estados` (`COD_ESTADO`),
  ADD CONSTRAINT `tbl_usuario_posto_ibfk_2` FOREIGN KEY (`COD_BAIRRO`) REFERENCES `tbl_bairros` (`COD_BAIRRO`),
  ADD CONSTRAINT `tbl_usuario_posto_ibfk_3` FOREIGN KEY (`COD_CIDADE`) REFERENCES `tbl_cidades` (`COD_CIDADE`),
  ADD CONSTRAINT `tbl_usuario_posto_ibfk_4` FOREIGN KEY (`COD_TIPO_USUARIO`) REFERENCES `tbl_tipo_usuario` (`COD_TIPO_USUARIO`),
  ADD CONSTRAINT `tbl_usuario_posto_ibfk_5` FOREIGN KEY (`COD_RUA`) REFERENCES `tbl_ruas` (`COD_RUA`),
  ADD CONSTRAINT `tbl_usuario_posto_ibfk_6` FOREIGN KEY (`COD_POSTO`) REFERENCES `tbl_posto` (`COD_POSTO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
