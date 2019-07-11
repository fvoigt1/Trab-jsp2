-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jul-2019 às 09:39
-- Versão do servidor: 10.3.15-MariaDB
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trabfute`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `idJog` int(11) NOT NULL,
  `nomeJogador` varchar(100) NOT NULL,
  `timeAtu` varchar(100) NOT NULL,
  `posiJog` varchar(100) NOT NULL,
  `numJog` varchar(10) NOT NULL,
  `golsJog` varchar(10) NOT NULL,
  `idadeJog` varchar(10) NOT NULL,
  `pesoJog` varchar(10) NOT NULL,
  `altJog` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `jogadores`
--

INSERT INTO `jogadores` (`idJog`, `nomeJogador`, `timeAtu`, `posiJog`, `numJog`, `golsJog`, `idadeJog`, `pesoJog`, `altJog`) VALUES
(1, 'Teste', 'Fluminense', 'Meia', '10', '20', '30', '90.0', '1.8'),
(3, 'Ganso', 'Fluminense', 'Meia', '10', '20', '32', '90.0', '1.8'),
(4, 'Teste', 'Flamengo', 'Meia', '10', '20', '30', '90.0', '1.8');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsu` varchar(40) NOT NULL,
  `emailUsu` varchar(40) NOT NULL,
  `senhaUsu` varchar(40) NOT NULL,
  `timeC` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nomeUsu`, `emailUsu`, `senhaUsu`, `timeC`) VALUES
(1, 'testeFlu', 'testeFlu@gmail.com', '123', 'Fluminense'),
(2, 'admin', 'admin@gmail.com', '123', 'Escolha o seu Time');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`idJog`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `idJog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
