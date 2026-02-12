-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/02/2026 às 01:25
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `receitas_db`
--
CREATE DATABASE IF NOT EXISTS `receitas_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `receitas_db`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `receitas`
--

DROP TABLE IF EXISTS `receitas`;
CREATE TABLE `receitas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `votos` int(11) DEFAULT 0,
  `soma_estrelas` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `receitas`
--

INSERT INTO `receitas` (`id`, `titulo`, `descricao`, `imagem`, `votos`, `soma_estrelas`) VALUES
(1, 'Coxinha', 'Coxinha tradicional de frango.', 'img/coxinha.png', 1, 5),
(2, 'Pastel', 'Pastel frito crocante recheado.', 'img/pastel.png', 1, 5),
(3, 'Empada', 'Empada cremosa de frango.', 'img/empada.png', 1, 3),
(4, 'Esfiha', 'Esfiha aberta de carne.', 'img/esfiha.jpg', 1, 2),
(5, 'Quibe', 'Quibe frito com hortelã.', 'img/quibe.jpg', 1, 2),
(6, 'Risole', 'Risole de presunto e queijo.', 'img/risole.webp', 1, 5),
(7, 'Bolinha de Queijo', 'Bolinha crocante recheada.', 'img/bolinha-de-queijo.jpg', 1, 5),
(8, 'Enroladinho', 'Enroladinho de salsicha assado.', 'img/enroladinho-de-salsicha.jpg', 1, 4),
(9, 'Pão de Queijo', 'Pão de queijo mineiro.', 'img/pao-de-queijo.jpg', 1, 5),
(10, 'Torta Salgada', 'Torta de liquidificador recheada.', 'img/torta.jpg', 1, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `receitas`
--
ALTER TABLE `receitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `receitas`
--
ALTER TABLE `receitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
