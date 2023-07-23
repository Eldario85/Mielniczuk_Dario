SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Clinica
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Clinica` ;

-- -----------------------------------------------------
-- Schema Clinica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Clinica` DEFAULT CHARACTER SET utf8 ;
USE `Clinica` ;

-- -----------------------------------------------------
-- Table `Clinica`.`medico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Clinica`.`medico` ;

CREATE TABLE IF NOT EXISTS `Clinica`.`medico` (
  `Matricula` INT(11) NOT NULL,
  `nombre` VARCHAR(30) NULL DEFAULT NULL,
  `apellido` VARCHAR(30) NULL DEFAULT NULL,
  `especialidad` VARCHAR(20) NULL DEFAULT NULL,
  `observaciones` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Matricula`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Clinica`.`paciente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Clinica`.`paciente` ;

CREATE TABLE IF NOT EXISTS `Clinica`.`paciente` (
  `nss` INT(11) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `domicilio` VARCHAR(50) NULL DEFAULT NULL,
  `codigo_postal` SMALLINT(6) NULL DEFAULT NULL,
  `telefono` VARCHAR(16) NULL DEFAULT NULL,
  `nro_historial_clinico` INT(11) NOT NULL,
  `observaciones` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`nro_historial_clinico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Clinica`.`ingreso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Clinica`.`ingreso` ;

CREATE TABLE IF NOT EXISTS `Clinica`.`ingreso` (
  `id_ingreso` INT(11) NOT NULL,
  `fecha_ingreso` DATE NOT NULL,
  `nro_habitacion` SMALLINT(6) NULL DEFAULT NULL,
  `nro_cama` SMALLINT(6) NULL DEFAULT NULL,
  `observaciones` TEXT NULL DEFAULT NULL,
  `nro_historial_paciente` INT(11) NOT NULL,
  `matricula_medico` INT(11) NOT NULL, 
  PRIMARY KEY (`id_ingreso`),
  -- INDEX `fk_matricula_medico` (`matricula_medico` ASC) VISIBLE,
  -- INDEX `fk_nro_historial_paciente` (`nro_historial_paciente` ASC) VISIBLE,
  CONSTRAINT `fk_matricula_medico`
    FOREIGN KEY (`matricula_medico`)
    REFERENCES `Clinica`.`medico` (`Matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nro_historial_paciente`
    FOREIGN KEY (`nro_historial_paciente`)
    REFERENCES `Clinica`.`paciente` (`nro_historial_clinico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
