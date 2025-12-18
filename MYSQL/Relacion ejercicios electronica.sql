use TiendaTecnologia;
SELECT id_fab, id_producto, descripcion, precio FROM PRODUCTOS;     
SELECT * FROM PEDIDOS WHERE id_cliente = 2;
SELECT * FROM PRODUCTOS WHERE precio > 100;
SELECT * FROM CLIENTES WHERE ciudad IN ('Madrid', 'Barcelona');
SELECT AVG(precio) as precio_medio FROM PRODUCTOS WHERE id_fab = '1';
SELECT     MIN(fecha_pedido) as primer_pedido FROM PEDIDOS;
SELECT DISTINCT pais FROM FABRICANTES;
SELECT * FROM PEDIDOS WHERE fecha_pedido BETWEEN '2024-01-01' AND '2024-02-05';
SELECT CONCAT(nombre, ' - ', direccion, ' - ', ciudad) AS datos_cliente FROM CLIENTES;
SELECT pais, COUNT(*) as total_fabricantes FROM FABRICANTES GROUP BY pais;
SELECT id_producto, descripcion, precio, (precio * 1.21) AS precio_con_iva FROM PRODUCTOS;
SELECT * FROM PRODUCTOS ORDER BY precio DESC LIMIT 1;
SELECT id_cliente, COUNT(*) as total_pedidos FROM PEDIDOS GROUP BY id_cliente ORDER BY total_pedidos DESC LIMIT 1;
SELECT * FROM PRODUCTOS ORDER BY precio DESC;
SELECT * FROM CLIENTES ORDER BY ciudad ASC;
SELECT * FROM PRODUCTOS ORDER BY precio ASC LIMIT 5;
SELECT id_fab, COUNT(*) as cantidad_productos FROM PRODUCTOS GROUP BY id_fab;

-- Ejercicio bien hecho 

SELECT id_fab, COUNT(*) AS cantidad_productos
FROM PRODUCTOS
GROUP BY id_fab
HAVING COUNT(*) > 1;

--
SELECT * FROM CLIENTES WHERE nombre LIKE 'A%';
SELECT * FROM PRODUCTOS WHERE descripcion LIKE '%Portátil%';
SELECT UPPER(nombre) FROM CLIENTES;
SELECT LOWER(descripcion) FROM PRODUCTOS;
SELECT UPPER(CONCAT(nombre, ' ', direccion)) AS Nombre_Completo FROM CLIENTES;
SELECT CONCAT('Producto: ', descripcion) AS Producto_Descripcion FROM PRODUCTOS;
SELECT nombre, SUBSTR(pais, 1, 3) as abrev_pais FROM FABRICANTES;
SELECT REPLACE(direccion, 'Calle', 'Avda.') as nueva_direccion FROM CLIENTES;
SELECT N_pedido, fecha_pedido, LAST_DAY(fecha_pedido) as fin_de_mes FROM PEDIDOS;
SELECT id_pedido, estado,
       CASE 
           WHEN estado = 'E' THEN 'Finalizado'
           WHEN estado = 'C' THEN 'Anulado'
           ELSE 'En Gestión'
       END AS estado_descripcion FROM Pedidos;
SELECT * FROM PEDIDOS WHERE EXTRACT(YEAR FROM Fecha_pedido) = 2023;
SELECT precio, POWER(precio, 2) as precio_cuadrado FROM PRODUCTOS;
SELECT Descripcion, ROUND(precio, 1) as precio_redondeado FROM PRODUCTOS;
SELECT N_pedido, EXTRACT(YEAR FROM fecha_pedido) as anio FROM PEDIDOS;
SELECT COUNT(*) as total_2024 FROM PEDIDOS WHERE EXTRACT(YEAR FROM fecha_pedido) = 2024;
SELECT nombre, REVERSE(nombre) as nombre_invertido FROM CLIENTES;
SELECT nombre, LENGTH(nombre) as longitud FROM CLIENTES;
SELECT SUBSTR(nombre, 1, 4) as inicio_nombre FROM CLIENTES;
SELECT descripcion, precio,
       CASE 
           WHEN precio >= 500 THEN 'CARO'
           ELSE 'BARATO'
       END AS categoria_precio
FROM PRODUCTOS;

SELECT Id_producto, SUM(cant) as total_vendido FROM Detalles_Pedido GROUP BY Id_producto having suma >=2;


-- Ejercicio bien hecho 

SELECT ciudad, COUNT(*) AS num_clientes
FROM CLIENTES
GROUP BY ciudad
HAVING COUNT(*) > 1;
