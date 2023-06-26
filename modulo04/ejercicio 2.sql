CREATE TABLE PAIS
(
  Pais_id INT NOT NULL,
  nombre_pais VARCHAR(30) NOT NULL,
  PRIMARY KEY (Pais_id),
  UNIQUE (nombre_pais)
);

CREATE TABLE PROVINCIA
(
  provincia_id INT NOT NULL,
  nombre_provincia VARCHAR(30) NOT NULL,
  Pais_id INT NOT NULL,
  PRIMARY KEY (provincia_id),
  FOREIGN KEY (Pais_id) REFERENCES PAIS(Pais_id)
);

CREATE TABLE LOCALIDAD
(
  codigo_localidad INT NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  codigo_postal INT NOT NULL,
  provincia_id INT NOT NULL,
  PRIMARY KEY (codigo_localidad),
  FOREIGN KEY (provincia_id) REFERENCES PROVINCIA(provincia_id)
);

CREATE TABLE EMPLEADO
(
  empleado_id INT NOT NULL,
  dni INT NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  email VARCHAR(45) NOT NULL,
  fecha_alta DATE NOT NULL,
  codigo_localidad INT NOT NULL,
  PRIMARY KEY (empleado_id),
  FOREIGN KEY (codigo_localidad) REFERENCES LOCALIDAD(codigo_localidad),
  UNIQUE (dni)
);

CREATE TABLE EMPLEADO_telefono
(
  telefono INT NOT NULL,
  empleado_id INT NOT NULL,
  PRIMARY KEY (telefono, empleado_id),
  FOREIGN KEY (empleado_id) REFERENCES EMPLEADO(empleado_id)
);

INSERT INTO `tp4_ej2`.`pais` (`Pais_id`, `nombre_pais`) VALUES ('1', 'Argentina');
INSERT INTO `tp4_ej2`.`pais` (`Pais_id`, `nombre_pais`) VALUES ('2', 'Brasil');
INSERT INTO `tp4_ej2`.`pais` (`Pais_id`, `nombre_pais`) VALUES ('3', 'Paraguay');
INSERT INTO `tp4_ej2`.`provincia` (`provincia_id`, `nombre_provincia`, `Pais_id`) VALUES ('10', 'Misiones', '1');
INSERT INTO `tp4_ej2`.`provincia` (`provincia_id`, `nombre_provincia`, `Pais_id`) VALUES ('20', 'Corrientes', '1');
INSERT INTO `tp4_ej2`.`provincia` (`provincia_id`, `nombre_provincia`, `Pais_id`) VALUES ('30', 'Buenos Aires', '1');
INSERT INTO `tp4_ej2`.`localidad` (`codigo_localidad`, `nombre`, `codigo_postal`, `provincia_id`) VALUES ('1', 'Obera', '3360', '10');
INSERT INTO `tp4_ej2`.`localidad` (`codigo_localidad`, `nombre`, `codigo_postal`, `provincia_id`) VALUES ('2', 'corrientes', '2215', '20');
INSERT INTO `tp4_ej2`.`localidad` (`codigo_localidad`, `nombre`, `codigo_postal`, `provincia_id`) VALUES ('3', 'moreno', '2200', '30');
INSERT INTO `tp4_ej2`.`empleado` (`empleado_id`, `dni`, `nombre`, `email`, `fecha_alta`, `codigo_localidad`) VALUES ('1', '32158745', 'Dario', 'dario@gmail.com', '2023-02-08', '1');
INSERT INTO `tp4_ej2`.`empleado` (`empleado_id`, `dni`, `nombre`, `email`, `fecha_alta`, `codigo_localidad`) VALUES ('2', '25500632', 'Gissel', 'gis@gmail.com', '2020-01-02', '2');
INSERT INTO `tp4_ej2`.`empleado` (`empleado_id`, `dni`, `nombre`, `fecha_alta`, `codigo_localidad`) VALUES ('3', '35654896', 'Roberto', '2022-02-02', '3');
INSERT INTO `tp4_ej2`.`empleado_telefono` (`telefono`, `empleado_id`) VALUES ('15500232', '1');
INSERT INTO `tp4_ej2`.`empleado_telefono` (`telefono`, `empleado_id`) VALUES ('405030', '3');