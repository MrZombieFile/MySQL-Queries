SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, precio * 1.2 AS 'precio $', precio AS 'precio €' FROM producto;
SELECT nombre AS 'nom de producto', precio * 1.2 AS 'dòlars', precio AS 'euros' FROM producto;
SELECT UPPER(nombre) AS 'nombre', precio FROM producto;
SELECT LOWER(nombre) AS 'nombre', precio FROM producto;
SELECT nombre, UPPER(LEFT(nombre, 2)) AS 'Codi fabricant' FROM fabricante;
SELECT nombre, ROUND(precio) FROM producto;
SELECT nombre, TRUNCATE(precio, 0) FROM producto;
SELECT UPPER(LEFT(f.nombre, 2)) AS 'codi fabricant', p.nombre AS 'producto', f.nombre AS 'fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo;
SELECT DISTINCT UPPER(LEFT(f.nombre, 2)) AS 'codi fabricant', p.nombre AS 'producto' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo;
SELECT nombre FROM fabricante ORDER BY nombre ASC;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante LIMIT 3, 2;
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
SELECT p.nombre AS 'nombre producto', p.precio, f.nombre AS 'fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo;
SELECT p.nombre AS 'nombre producto', p.precio, f.nombre AS 'fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY f.nombre ASC;
SELECT p.codigo, p.nombre, f.codigo, f.nombre FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo;
SELECT p.nombre AS 'producto', p.precio, f.nombre FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio ASC LIMIT 1;
SELECT p.nombre, p.precio, f.nombre FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio DESC LIMIT 1;
SELECT p.nombre, f.nombre FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo';
SELECT f.nombre, p.nombre, p.precio FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Crucial' AND p.precio >200;
SELECT p.nombre AS 'Producto', f.nombre AS 'Fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus' OR f.nombre = 'Hewlett-Packard' OR f.nombre = 'Seagate';

SELECT p.nombre AS 'producto', p.precio, SUBSTR(f.nombre, -1, 1) AS 'fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE SUBSTR(f.nombre, -1, 1) = 'e';
SELECT p.nombre AS 'producto', p.precio, f.nombre AS 'fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE "%w%";
SELECT p.nombre AS 'producto', p.precio, f.nombre AS 'fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE p.precio >= 180;
SELECT f.codigo, f.nombre FROM fabricante f INNER JOIN producto p ON p.codigo_fabricante = f.codigo WHERE p.nombre IS NOT NULL;
SELECT f.codigo, f.nombre FROM fabricante f INNER JOIN producto p ON p.codigo_fabricante = f.codigo WHERE p.nombre LIKE '%%';
SELECT f.codigo, f.nombre FROM fabricante f INNER JOIN producto p ON p.codigo_fabricante = f.codigo WHERE p.nombre IS NULL;


SELECT p.nombre, p.precio FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo' ORDER BY p.precio DESC LIMIT 1;
SELECT p.nombre, p.precio FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Hewlett-Packard' ORDER BY p.precio ASC LIMIT 1;
SELECT p.nombre, p.precio FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE
p.precio >= (SELECT MAX(p.precio) FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo' LIMIT 1);
SELECT p.nombre, p.precio FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus' AND p.precio >= (SELECT AVG(p.precio) FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus');