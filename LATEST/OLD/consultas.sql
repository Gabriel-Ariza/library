-- 3.Si suponemos que los cursos tienen una duración diferente dependiendo de la ruta que lo contenga 
-- ¿Qué modificación haría a la estructura de datos ya planteada?

-- Agregaria un nuevo campo a la tabla que se llamara duracion_curso y se llenaria segun la 
-- ruta elegida por el usuario 



-- PRIMERA CONSULTA nombres, edades de aprendices que están cursando la carrera de electrónica.
SELECT aprendiz.nombre, aprendiz.edad FROM aprendiz 
JOIN carrera ON aprendiz.id_ruta = carrera.id_carrera WHERE carrera.nombre = 'Electrónica';


-- SEGUNDA CONSULTA Nombres Aprendices junto al nombre de la ruta de aprendizaje que cancelaron.
SELECT m.Estado_Matricula, a.nombre AS nombre_aprendiz, r.nombre AS nombre_ruta
FROM matricula m
JOIN aprendiz a ON m.id_aprendiz = a.id_aprendiz
JOIN ruta r ON a.id_ruta = r.id_ruta
WHERE m.Estado_Matricula = 'Cancelado';


-- TERCERA CONSULTA Nombre de los cursos que no tienen un instructor asignado.
SELECT * FROM curso WHERE id_instructor IS NULL;


-- CUARTA CONSULTA instructores que dan cursos en la ruta “Sistemas de Información Empresariales”.
SELECT id_ruta FROM ruta WHERE nombre = 'Sistemas de Información Empresariales';
SELECT id_curso FROM curso_ruta WHERE id_ruta = 4;
SELECT DISTINCT instructor.nombre FROM instructor
JOIN curso ON instructor.id_instructor = curso.id_instructor
WHERE curso.id_curso IN (41);


-- QUINTA CONSULTA aprendices que terminaron carrera con el énfasis de la carrera
SELECT m.Estado_Matricula, a.nombre AS nombre_aprendiz, r.nombre AS énfasis_carrera, 
c.nombre AS nombre_carrera
FROM matricula m JOIN aprendiz a ON m.id_aprendiz = a.id_aprendiz
JOIN ruta r ON a.id_ruta = r.id_ruta
JOIN carrera c ON r.id_carrera = c.id_carrera
WHERE m.Estado_Matricula = 'Terminado';


-- CONSULTA EXTRA
SELECT a.nombre AS Nombre_Aprendiz, m.Estado_Matricula, c.nombre AS Carrera
FROM matricula m
JOIN aprendiz a ON m.id_aprendiz = a.id_aprendiz
JOIN ruta r ON a.id_ruta = r.id_ruta
JOIN carrera c ON r.id_carrera = c.id_carrera
WHERE m.Estado_Matricula = 'En Ejecución';
