use liga; 

select * from equipo;
select * from jugador; 
select * from partido; 

-- 1. Datos del jugador más alto en la liga 

select * from jugador where altura = ( select max(altura) from jugador);


-- 2. Datos de todos los jugadores que pertenecen a la caja laboral

select j.* from jugador j join equipo e on j.equipo=e.id_equipo where e.nombre = "Caja Laboral";

-- 3. Suma de las alturas de los jugadores que sean del CAI Zaragoza o del Real Madrid 

select sum(altura) from jugador j join equipo e on j.equipo=e.id_equipo where e.nombre = "Real Madrid" or e.nombre = "CAI Zaragoza";

-- 4. Datos de los jugadores que miden más que todos los jugadores de la Caja Laboral 

select * from jugador where altura > (
select max(altura) from jugador j join equipo e on j.equipo = e.id_equipo where e.nombre = "Caja Laboral");

-- 5. Datos de los jugadores mejor y peor pagado de la liga 

select * from jugador where salario = (
select max(salario) from jugador) or salario = ( select min(salario) from jugador); 

-- 6. Datos Datos del jugador más antiguo, es decir, el que lleva más tiempo dado de alta en un equipo.

select * from jugador where fecha_alta = (select max(fecha_alta) from jugador);

-- 7. Datos de los equipos que tienen más de tres jugadores registrados.

select * from equipo e join jugador j on (e.id_equipo=j.equipo);

-- 8. Mostrar el nombre del jugador, el nombre del equipo al que pertenece y su posición.

select j.nombre, e.nombre, posicion from jugador j join equipo e on ( e.id_equipo = j.equipo ); 

-- 9. Mostrar el nombre de cada equipo y el nombre de su capitán o capitanes.



-- 10. Datos de los equipos y el número de partidos que han jugado como locales.



-- 11. Datos de los jugadores cuyos equipos hayan jugado al menos tres partidos como visitantes 

select * from jugador j where equipo in 
(select visitante from partido group by visitante having count(*) >=3);

