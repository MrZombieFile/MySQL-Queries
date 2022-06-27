SELECT d.nombre, p.apellido1, p.apellido2, p.nombre FROM departamento d INNER JOIN profesor prf ON prf.id_departamento = d.id RIGHT JOIN persona p ON prf.id_profesor = p.id WHERE p.tipo = profesor;
SELECT d.nombre, p.apellido1, p.apellido2, p.nombre FROM departamento d INNER JOIN profesor prf ON prf.id_departamento = d.id RIGHT JOIN persona p ON prf.id_profesor = p.id WHERE p.tipo = 'profesor' AND prf.id_departamento = NULL;
SELECT d.id, d.nombre FROM departamento d LEFT JOIN profesor prf ON d.id = prf.id_departamento WHERE prf.id_profesor IS NULL;
SELECT p.nombre, p.nif, p.apellido1, p.apellido2, a.nombre, a.creditos FROM persona p LEFT JOIN asignatura a ON a.id_profesor = p.id WHERE a.nombre IS NULL AND p.tipo = 'profesor';
SELECT * FROM asignatura WHERE id_profesor IS NULL;
