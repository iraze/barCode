-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23-Ago-2021 às 21:43
-- Versão do servidor: 10.3.27-MariaDB-0+deb10u1
-- versão do PHP: 7.3.27-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Task`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `boleto`
--

CREATE TABLE `boleto` (
  `id` int(11) NOT NULL,
  `barCode` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `expirationDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `boleto`
--

INSERT INTO `boleto` (`id`, `barCode`, `amount`, `expirationDate`) VALUES
(1, '10021290001192110001210904475617405975870000002000', 10.5, '2021-08-03 18:30:38'),
(2, '121290001192110001210904475617401234570000002000', 10.5, '2021-08-03 18:30:38');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `boleto`
--
ALTER TABLE `boleto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `boleto`
--
ALTER TABLE `boleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
