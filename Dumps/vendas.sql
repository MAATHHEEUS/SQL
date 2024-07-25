-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 29-Set-2022 às 00:22
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aula`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

DROP TABLE IF EXISTS `vendas`;
CREATE TABLE IF NOT EXISTS `vendas` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `valor_venda` float NOT NULL,
  `nome_vendedor` varchar(40) NOT NULL,
  `loja` int NOT NULL,
  `data_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_venda`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id_venda`, `valor_venda`, `nome_vendedor`, `loja`, `data_venda`) VALUES
(1, 200, 'Matheus', 3, '2022-09-28 20:09:25'),
(2, 200, 'Matheus', 9, '2022-09-28 20:22:22'),
(3, 0, 'Matheus', 8, '2022-09-28 20:23:02'),
(4, 0, 'Matheus', 2, '2022-09-28 20:27:57'),
(5, 0, 'Matheus', 3, '2022-09-28 20:29:31'),
(6, 0, 'Matheus', 22, '2022-09-28 20:30:19'),
(7, 25.99, 'João', 2, '2022-09-28 20:36:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
