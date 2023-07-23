-- ejercicio 3 consultas_clinicas
-- a)
INSERT INTO `paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`, `observaciones`) 
VALUES ('22558', 'Antonio', 'Magallanes', 'Dos Pindo 260', '3640', null, '1932', null);
-- b)
UPDATE `paciente` SET `telefono` = '3745-589174' WHERE (`nro_historial_clinico` = '1932');
-- c)
SELECT concat(paciente.apellido, ', ', paciente.nombre) as "Paciente", paciente.observaciones as 'Observacion_registrada' 
FROM paciente 
WHERE paciente.observaciones != "null";
-- D)
SELECT concat(paciente.apellido, ', ', paciente.nombre) as "Paciente", medico.especialidad 
FROM paciente INNER JOIN ingreso on paciente.nro_historial_clinico=ingreso.nro_historial_paciente 
INNER JOIN medico on ingreso.matricula_medico=medico.Matricula;
-- e)
DELETE FROM medico 
WHERE medico.Matricula = ( SELECT medico.Matricula FROM medico left join ingreso on ingreso.matricula_medico= medico.Matricula  WHERE ingreso.matricula_medico is null);
-- f) 
SELECT ingreso.nro_cama, count(*) as usos 
FROM ingreso 
WHERE (SELECT count(*) FROM ingreso where ingreso.nro_cama=ingreso.nro_habitacion)>1 group by ingreso.nro_cama order by usos desc;
-- g)
SELECT concat(paciente.apellido, ', ', paciente.nombre) as "Paciente", count(ingreso.nro_historial_paciente) as 'Ingresos' 
FROM paciente INNER JOIN ingreso ON paciente.nro_historial_clinico=ingreso.nro_historial_paciente 
GROUP BY ingreso.nro_historial_paciente, paciente 
HAVING count(ingreso.nro_historial_paciente) >= 4 
ORDER BY count(ingreso.nro_historial_paciente) desc;
