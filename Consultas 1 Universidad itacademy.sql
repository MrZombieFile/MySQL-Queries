SELECT apellido1, apellido2, nombre FROM persona ORDER BY apellido2 ASC, apellido1 ASC, nombre ASC;
SELECT nombre, apellido1, apellido2 FROM persona WHERE telefono IS NULL;
SELECT * FROM persona WHERE YEAR(fecha_nacimiento) = 1999;
SELECT * FROM persona WHERE telefono IS NULL AND tipo = 'profesor';
SELECT * FROM asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;
SELECT p.apellido1, p.apellido2, p.nombre, d.nombre FROM departamento d INNER JOIN profesor f ON f.id_departamento = d.id INNER JOIN persona p ON f.id_profesor = p.id WHERE p.tipo = 'profesor' ORDER BY p.apellido1 ASC, p.apellido2 ASC, p.nombre ASC;
SELECT a.nombre, ce.anyo_inicio, ce.anyo_fin FROM curso_escolar ce INNER JOIN alumno_se_matricula_asignatura matAs ON ce.id = matAs.id_curso_escolar INNER JOIN asignatura a ON a.id = matAs.id_asignatura INNER JOIN persona p ON p.id = matAs.id_alumno WHERE p.nif = '26902806M';
SELECT d.nombre FROM departamento d INNER JOIN profesor prf ON prf.id_departamento = d.id INNER JOIN asignatura a ON prf.id_profesor = a.id_profesor INNER JOIN grado g ON a.id_grado = g.id WHERE g.nombre = 'Grado en Ingeniería Informática (Plan 2015)';
SELECT * FROM persona p INNER JOIN alumno_se_matricula_asignatura alsm ON p.id = alsm.id_alumno WHERE alsm.id_curso_escolar = 5;
