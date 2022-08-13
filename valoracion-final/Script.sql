# Creación de Base de Datos
CREATE DATABASE peluqueria_canina;

# Uso de la Base de Datos previamente creada
USE peluqueria_canina;

# Creación de la tabla dueño
CREATE TABLE dueno (
  dni int NOT NULL UNIQUE,
  nombre varchar(255) NOT NULL,
  apellido varchar(255) NOT NULL,
  telefono bigint NOT NULL,
  dirección varchar(255) NOT NULL,
  PRIMARY KEY(dni)
);

# Creación de la tabla perro
CREATE TABLE perro (
  id_perro int NOT NULL UNIQUE AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  fecha_nac DATE NOT NULL,
  sexo varchar(255) NOT NULL,
  dni_dueno int NOT NULL,
  FOREIGN KEY(dni_dueno) REFERENCES dueno(dni),
  CHECK (sexo IN ("Hembra","Macho"))
);

# Creación de la tabla historial
CREATE TABLE historial (
  id_historial int NOT NULL UNIQUE AUTO_INCREMENT,
  fecha DATE NOT NULL,
  perro int NOT NULL,
  descripcion varchar(255) NOT NULL,
  monto decimal(15,2) NOT NULL,
  FOREIGN KEY(perro) REFERENCES perro(id_perro)
);

# Inserción de datos en la tabla dueño
INSERT INTO dueno (dni, nombre, apellido, telefono, dirección) 
VALUES
 (22572196, "Pedro" , "De Biasi" , 1723858962, "22 Clarendon Pass"),
 (17230272, "Gabrila", "Jendrach", 2519599103, "0323 Corben Hill"),
 (57025451, "Ruby", "Adamowicz", 3965984582,"0051 Morrow Parkway"),
 (21527973, "Irena", "Battey", 7317298032, "0 Northfield Way"),
 (88691162, "Levey", "Fradgley",6214460147, "4382 Debs Lane"),
 (47453330,	"Pedro",	"Dury",	9141544289	, "41420 Barby Parkway");

# Inserción de datos en la tabla perro
INSERT INTO perro (nombre, fecha_nac, sexo, dni_dueno) 
VALUES 
  ("Trueno", "2020-09-17", "Macho", 57025451),
  ("Mancha", "2021-08-17", "Hembra", 22572196),
  ("Centella", "2022-06-17", "Hembra", 21527973),
  ("Tobi", "2019-12-27", "Macho", 88691162),
  ("Campanita", "2021-10-21", "Hembra", 17230272),
  ("Copito", "2019-10-16", "Macho", 47453330);

# Inserción de datos en la tabla historial
INSERT INTO historial (fecha, perro, descripcion, monto)
VALUES 
  ("2020-07-11",	3,	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", 872.84),
  ("2021-10-30",	5,	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", 360.68),
  ("2022-08-25",	2,	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", 639.16),
  ("2021-04-29",	4,	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", 172.29),
  ("2022-03-14",	1,	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", 947.10),
  ("2022-08-02",	2,	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", 703.05);