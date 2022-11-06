-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2022 a las 19:27:10
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "-05:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--
DROP DATABASE IF EXISTS `escuela`;
CREATE DATABASE IF NOT EXISTS `escuela` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `escuela`;


--
-- Metadatos
--
USE `phpmyadmin`;

--
-- Metadatos para la base de datos escuela
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Creación de la tabla ESTUDIANTES

CREATE TABLE estudiante(
    id_estudiante int(10) NOT NULL,
    identidad varchar(100) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido varchar(100) NOT NULL,
    fechanac date NOT NULL
);

ALTER TABLE estudiante
    ADD PRIMARY KEY (id_estudiante),
    ADD UNIQUE (identidad);

ALTER TABLE estudiante
    change id_estudiante id_estudiante int(10) NOT NULL AUTO_INCREMENT;

INSERT INTO estudiante(fechanac) VALUES ('2003-03-20');
INSERT INTO estudiante (identidad, fechanac) VALUES ('1111','2003-03-20');
INSERT INTO estudiante (id_estudiante, identidad, nombre, apellido, fechanac) VALUES (NULL, '12345678', 'Diego Fdo', 'Manquillo Petro', '2003-03-20');

