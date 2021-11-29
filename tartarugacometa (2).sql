-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2021 às 02:39
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tartarugacometa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `destinatario`
--

CREATE TABLE `destinatario` (
  `id_dest` int(11) NOT NULL,
  `nome_razaosoc_dest` varchar(50) NOT NULL,
  `cpf_cnpj_dest` varchar(18) NOT NULL,
  `endereco_dest` varchar(60) NOT NULL,
  `cep` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `id_entrega` int(11) NOT NULL,
  `situacao` varchar(50) DEFAULT NULL,
  `id_remetente` int(11) DEFAULT NULL,
  `id_dest` int(11) DEFAULT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_prod` int(11) NOT NULL,
  `nome_prod` varchar(50) NOT NULL,
  `peso` varchar(255) NOT NULL,
  `volume` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `remetente`
--

CREATE TABLE `remetente` (
  `id_remetente` int(11) NOT NULL,
  `nome_razaosoc_remetente` varchar(50) NOT NULL,
  `cpf_cnpj_remetente` varchar(18) NOT NULL,
  `endereco_remetente` varchar(60) NOT NULL,
  `cep_remetente` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `destinatario`
--
ALTER TABLE `destinatario`
  ADD PRIMARY KEY (`id_dest`),
  ADD UNIQUE KEY `cpf_cnpj_dest` (`cpf_cnpj_dest`);

--
-- Índices para tabela `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id_entrega`),
  ADD KEY `fk_IdRemeEntrega` (`id_remetente`),
  ADD KEY `fk_IdDestEntrega` (`id_dest`),
  ADD KEY `fk_idProd` (`id_prod`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_prod`);

--
-- Índices para tabela `remetente`
--
ALTER TABLE `remetente`
  ADD PRIMARY KEY (`id_remetente`),
  ADD UNIQUE KEY `cpf_cnpj_remetente` (`cpf_cnpj_remetente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `destinatario`
--
ALTER TABLE `destinatario`
  MODIFY `id_dest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id_entrega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `remetente`
--
ALTER TABLE `remetente`
  MODIFY `id_remetente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `fk_IdDestEntrega` FOREIGN KEY (`id_dest`) REFERENCES `destinatario` (`id_dest`),
  ADD CONSTRAINT `fk_IdRemeEntrega` FOREIGN KEY (`id_remetente`) REFERENCES `remetente` (`id_remetente`),
  ADD CONSTRAINT `fk_idProd` FOREIGN KEY (`id_prod`) REFERENCES `produto` (`id_prod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
