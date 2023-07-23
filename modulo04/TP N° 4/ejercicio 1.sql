CREATE TABLE ALUMNO
(
  cod_matricula INT NOT NULL,
  Nombre VARCHAR(30) NOT NULL,
  DNI INT NOT NULL,
  fecha_nac DATE NOT NULL,
  email VARCHAR(30) NOT NULL,
  PRIMARY KEY (cod_matricula)
);

CREATE TABLE CURSO
(
  cod_curso INT NOT NULL,
  Nombre VARCHAR(30) NOT NULL,
  PRIMARY KEY (cod_curso)
);

CREATE TABLE PROFESOR
(
  profesor_id INT NOT NULL,
  Nombre VARCHAR(30) NOT NULL,
  Especialidad VARCHAR(30) NOT NULL,
  Email VARCHAR(30) NOT NULL,
  PRIMARY KEY (profesor_id)
);

CREATE TABLE inscripto
(
  cod_matricula INT NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (cod_matricula, cod_curso),
  FOREIGN KEY (cod_matricula) REFERENCES ALUMNO(cod_matricula),
  FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso)
);

CREATE TABLE Relationship
(
  cod_curso INT NOT NULL,
  profesor_id INT NOT NULL,
  PRIMARY KEY (cod_curso, profesor_id),
  FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso),
  FOREIGN KEY (profesor_id) REFERENCES PROFESOR(profesor_id)
);

INSERT INTO `tp4_ej1`.`alumno` (`cod_matricula`, `Nombre`, `DNI`, `fecha_nac`, `email`) VALUES ('1', 'Carlos Sanchez', '32855687', '1985-02-10', 'robertocarlos@gmai.com');
INSERT INTO `tp4_ej1`.`alumno` (`cod_matricula`, `Nombre`, `DNI`, `fecha_nac`, `email`) VALUES ('2', 'Roberto Carlos', '35698745', '2005-12-20', 'robertocarlos@gmai.com');
INSERT INTO `tp4_ej1`.`alumno` (`cod_matricula`, `Nombre`, `DNI`, `fecha_nac`, `email`) VALUES ('3', 'Gimena Sanchez', '34312785', '2007-01-07', 'gimesa@hotmail.com');
INSERT INTO `tp4_ej1`.`profesor` (`profesor_id`, `Nombre`, `Especialidad`, `Email`) VALUES ('100', 'Ramon', 'Ingeniero', 'ramoncito@gmail.com');
INSERT INTO `tp4_ej1`.`profesor` (`profesor_id`, `Nombre`, `Especialidad`, `Email`) VALUES ('101', 'Pedro', 'devops', 'pedro@gmail.com');
INSERT INTO `tp4_ej1`.`profesor` (`profesor_id`, `Nombre`, `Especialidad`) VALUES ('102', 'Carla', 'back end');
INSERT INTO `tp4_ej1`.`curso` (`cod_curso`, `Nombre`) VALUES ('1', 'Front end');
INSERT INTO `tp4_ej1`.`curso` (`cod_curso`, `Nombre`) VALUES ('2', 'Back end');
INSERT INTO `tp4_ej1`.`curso` (`cod_curso`, `Nombre`) VALUES ('3 ', 'Full stack');
INSERT INTO `tp4_ej1`.`inscripto` (`cod_matricula`, `cod_curso`) VALUES ('1', '2');
INSERT INTO `tp4_ej1`.`inscripto` (`cod_matricula`, `cod_curso`) VALUES ('2', '1');
INSERT INTO `tp4_ej1`.`inscripto` (`cod_matricula`, `cod_curso`) VALUES ('3', '3');
INSERT INTO `tp4_ej1`.`relationship` (`cod_curso`, `profesor_id`) VALUES ('1', '100');
INSERT INTO `tp4_ej1`.`relationship` (`cod_curso`, `profesor_id`) VALUES ('2', '101');
INSERT INTO `tp4_ej1`.`relationship` (`cod_curso`, `profesor_id`) VALUES ('3', '102');
