use tiendatecnologia;

-- 1 Mostrar todos los productos ordenados de mayor a menor. Diego Aranda Villar

Select * from productos order by precio desc;

-- 2 Consultar todos los pedidos con estado " pendiente ", muestra todos los datos. Diego Aranda Villar

Select * from pedidos where estado like 'Pendiente';

-- 3 Contar cuántos productos tienen un precio superior a 500€, nombra la tabla a "productos caros". Diego Aranda Villar  

Select precio as Productos_caros 
	from productos 
		where precio > 500;

-- 4 Obtener los nombres de los clientes cuyo teléfono acabe en 56. Diego Aranda Villar

Select nombre from clientes where Telefono ;

-- 5 Consultar los diferentes estados disponibles en la tabla Pedidos(sin repetir). Diego Aranda Villar


-- 7 Concatenar dirección y ciudad de los clientes en una sola columna llamada Ubicacion en mayusculas, que salga el id y el nombre. Diego Aranda Villar

Select direccion, ciudad as UBICACION, ID_cliente, nombre from clientes;

-- 8 fecha del pedido mas antiguo. Diego Aranda Villar

Select fecha_pedido from pedidos where fecha_pedido = '2023-01-01';

-- 9 Mostrar cuantos fabricantes tiene cada pais Diego Aranda Villar.

Select Pais from fabricantes;
		
                    

-- 10 Mostrar prductos que tengan un precio entre 200 y 800 . Diego Aranda Villar 

Select precio from productos where precio > 200 and precio < 800;

-- 11 producto mas caro. Diego Aranda Villar

Select * from productos where precio > 1000;

-- 16 Cuantos pedidos hay por metodo de pago

Select Metodo_pago from  pedidos;



