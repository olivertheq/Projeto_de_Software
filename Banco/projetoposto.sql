-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Mar-2020 às 03:06
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetoposto`
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
(8, 'Ana Moura');

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_estados`
--

CREATE TABLE `tbl_estados` (
  `COD_ESTADO` int(11) NOT NULL,
  `SILGA` varchar(2) NOT NULL,
  `NOME_ESTADO` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_estados`
--

INSERT INTO `tbl_estados` (`COD_ESTADO`, `SILGA`, `NOME_ESTADO`) VALUES
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
  `EMAIL` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_posto`
--

INSERT INTO `tbl_posto` (`COD_POSTO`, `NOME_POSTO`, `COD_TIPO_USUARIO`, `SENHA`, `CNPJ`, `BANDEIRA`, `CEP`, `COD_ESTADO`, `COD_CIDADE`, `COD_BAIRRO`, `COD_RUA`, `NUM_POSTO`, `EMAIL`) VALUES
(23, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, ''),
(24, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(25, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(27, '123', 1, '', '12345678', '1', 123978, 1, 1, 1, 0, 1, 'asda@asdad'),
(28, 'gt-8', 1, '', '12345678', 'SHELL', 123978, 1, 1, 1, 0, 2, 'asda@asdad'),
(29, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 10, 'aaaaaa@aaaa'),
(30, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 11, 'aaaaaa@aaaa'),
(33, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(34, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(35, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 11, 'aaaaaa@aaaa'),
(36, 'GT10', 1, '', '12345678', '1', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(37, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 2, 'aaaaaa@aaaa'),
(38, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 2, 'aaaaaa@aaaa'),
(39, 'GT10', 1, '', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 10, 'aaaaaa@aaaa'),
(40, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 10, 'aaaaaa@aaaa'),
(41, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 10, 'aaaaaa@aaaa'),
(42, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 10, 'aaaaaa@aaaa'),
(43, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 10, 'aaaaaa@aaaa'),
(44, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 11, 'aaaaaa@aaaa'),
(45, '1', 1, '1', '1', '', 1, 1, 1, 1, 0, 1, '1@1'),
(46, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(47, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 2, 'aaaaaa@aaaa'),
(48, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(49, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 10, 'aaaaaa@aaaa'),
(50, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 2, 'aaaaaa@aaaa'),
(51, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(52, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 11, 'aaaaaa@aaaa'),
(53, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 10, 'aaaaaa@aaaa'),
(54, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 11, 'aaaaaa@aaaa'),
(55, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(56, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 2, 'aaaaaa@aaaa'),
(57, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 1, 'aaaaaa@aaaa'),
(59, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 11, 'aaaaaa@aaaa'),
(60, 'GT10', 1, '123', '12345678', 'SHELL', 213123, 1, 1, 1, 0, 2, 'aaaaaa@aaaa'),
(63, 'Abonin_', 1, '123', '1233211', 'SHELL', 213123, 1, 1, 1, 0, 11, 'email@email');

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
(0, 'Rua 1');

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
(1, 'Posto'),
(2, 'Usuário do Posto'),
(3, 'Administrador'),
(4, 'Usuário do App');

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
  `CPF` varchar(11) NOT NULL,
  `DATA_NASC` date NOT NULL,
  `CEP` varchar(8) NOT NULL,
  `COD_ESTADO` int(11) NOT NULL,
  `COD_CIDADE` int(11) NOT NULL,
  `COD_BAIRRO` int(11) NOT NULL,
  `COD_RUA` int(11) NOT NULL,
  `NUM_RESIDENCIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_bairros`
--
ALTER TABLE `tbl_bairros`
  ADD PRIMARY KEY (`COD_BAIRRO`);

--
-- Índices para tabela `tbl_cidades`
--
ALTER TABLE `tbl_cidades`
  ADD PRIMARY KEY (`COD_CIDADE`);

--
-- Índices para tabela `tbl_combustivel`
--
ALTER TABLE `tbl_combustivel`
  ADD PRIMARY KEY (`COD_COMBUSTIVEL`);

--
-- Índices para tabela `tbl_estados`
--
ALTER TABLE `tbl_estados`
  ADD PRIMARY KEY (`COD_ESTADO`);

--
-- Índices para tabela `tbl_posto`
--
ALTER TABLE `tbl_posto`
  ADD PRIMARY KEY (`COD_POSTO`),
  ADD KEY `COD_ESTADO` (`COD_ESTADO`),
  ADD KEY `COD_BAIRRO` (`COD_BAIRRO`),
  ADD KEY `COD_CIDADE` (`COD_CIDADE`),
  ADD KEY `COD_TIPO_USUARIO` (`COD_TIPO_USUARIO`),
  ADD KEY `COD_RUA` (`COD_RUA`);

--
-- Índices para tabela `tbl_precos`
--
ALTER TABLE `tbl_precos`
  ADD PRIMARY KEY (`COD_USUARIO_POSTO`,`DATA_ATT`),
  ADD KEY `COD_COMBUSTIVEL` (`COD_COMBUSTIVEL`),
  ADD KEY `COD_POSTO` (`COD_POSTO`);

--
-- Índices para tabela `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`COD_PROMO`),
  ADD KEY `COD_USUARIO_POSTO` (`COD_USUARIO_POSTO`),
  ADD KEY `COD_POSTO` (`COD_POSTO`);

--
-- Índices para tabela `tbl_ruas`
--
ALTER TABLE `tbl_ruas`
  ADD PRIMARY KEY (`COD_RUA`);

--
-- Índices para tabela `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  ADD PRIMARY KEY (`COD_TIPO_USUARIO`);

--
-- Índices para tabela `tbl_usuario_app`
--
ALTER TABLE `tbl_usuario_app`
  ADD PRIMARY KEY (`COD_USUARIO_APP`,`USERNAME`),
  ADD KEY `COD_ESTADO` (`COD_ESTADO`),
  ADD KEY `COD_BAIRRO` (`COD_BAIRRO`),
  ADD KEY `COD_CIDADE` (`COD_CIDADE`),
  ADD KEY `COD_TIPO_USUARIO` (`COD_TIPO_USUARIO`),
  ADD KEY `COD_RUA` (`COD_RUA`);

--
-- Índices para tabela `tbl_usuario_posto`
--
ALTER TABLE `tbl_usuario_posto`
  ADD PRIMARY KEY (`COD_USUARIO_POSTO`,`USERNAME`),
  ADD KEY `COD_ESTADO` (`COD_ESTADO`),
  ADD KEY `COD_BAIRRO` (`COD_BAIRRO`),
  ADD KEY `COD_CIDADE` (`COD_CIDADE`),
  ADD KEY `COD_TIPO_USUARIO` (`COD_TIPO_USUARIO`),
  ADD KEY `COD_RUA` (`COD_RUA`),
  ADD KEY `COD_POSTO` (`COD_POSTO`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_combustivel`
--
ALTER TABLE `tbl_combustivel`
  MODIFY `COD_COMBUSTIVEL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_posto`
--
ALTER TABLE `tbl_posto`
  MODIFY `COD_POSTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `COD_PROMO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  MODIFY `COD_TIPO_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbl_usuario_app`
--
ALTER TABLE `tbl_usuario_app`
  MODIFY `COD_USUARIO_APP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_usuario_posto`
--
ALTER TABLE `tbl_usuario_posto`
  MODIFY `COD_USUARIO_POSTO` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
