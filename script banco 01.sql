-- MySQL Script generated by MySQL Workbench
-- Fri Nov  3 21:51:21 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema arsan
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema arsan
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `arsan` DEFAULT CHARACTER SET utf8mb3 ;
USE `arsan` ;

-- -----------------------------------------------------
-- Table `arsan`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsan`.`clientes` (
  `cod_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NULL DEFAULT NULL,
  `cpf` VARCHAR(45) NULL DEFAULT NULL,
  `fone` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `arsan`.`fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsan`.`fornecedores` (
  `cod_fornecedor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NULL DEFAULT NULL,
  `cnpj` VARCHAR(45) NULL DEFAULT NULL,
  `fone` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_fornecedor`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `arsan`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsan`.`produtos` (
  `cod_produto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NULL DEFAULT NULL,
  `preco` VARCHAR(60) NULL DEFAULT NULL,
  `quantidade` INT NULL DEFAULT NULL,
  PRIMARY KEY (`cod_produto`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `arsan`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsan`.`usuario` (
  `cod_usuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `cpf` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `cod_perfil` INT NULL DEFAULT NULL,
  `senha` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `arsan`.`venda_avulsa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsan`.`venda_avulsa` (
  `cod_venda_avulsa` INT NOT NULL AUTO_INCREMENT,
  `data` VARCHAR(45) NULL DEFAULT NULL,
  `quantidade` VARCHAR(45) NULL DEFAULT NULL,
  `valor_atual_item` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_venda_avulsa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `arsan`.`vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsan`.`vendas` (
  `cod_venda` INT NOT NULL AUTO_INCREMENT,
  `quantidade` VARCHAR(45) NULL DEFAULT NULL,
  `data` VARCHAR(45) NULL DEFAULT NULL,
  `cod_cliente` INT NOT NULL,
  `cod_produto` INT NOT NULL,
  `valor_atual_item` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_venda`),
  INDEX `fk_Vendas_Clientes_idx` (`cod_cliente` ASC) VISIBLE,
  INDEX `fk_Vendas_Produtos1_idx` (`cod_produto` ASC) VISIBLE,
  CONSTRAINT `fk_Vendas_Clientes`
    FOREIGN KEY (`cod_cliente`)
    REFERENCES `arsan`.`clientes` (`cod_cliente`),
  CONSTRAINT `fk_Vendas_Produtos1`
    FOREIGN KEY (`cod_produto`)
    REFERENCES `arsan`.`produtos` (`cod_produto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
