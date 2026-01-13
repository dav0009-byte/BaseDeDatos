use profesores; 

select * from profesores; 
select * from coordinadores; 
select * from asignatura; 
select * from imparte; 
select * from prepara; 

-- 1. Muestra los datos y el DNI del profesor que la imparte

select i.dni, a.descripcion from asignatura join imparte i on a.codigo = i.asignatura;
select * from asignaturas a, imparte i where a.codigo = i.asignatura;

-- 2. Muestra los datos de los profesores que imparten alguna asignatura 

select * from profesores p join imparte i on p.dni = i.dni order by ingreso desc; 

-- 3. Lo mismo que el anterior pero con natural join 

select * from profesores natural join imparte;  

-- Producto Cartesiano ( CROSS JOIN ) 

select * from profesores, asignaturas; 
select * from profesores cross join imparte; 

-- 4. Suma de créditos que imparte cada profesor según su dni 

select  i.dni, sum(a.creditos) as Suma_Creditos from asignaturas a join imparte i on a.codigo = i.asignatura group by i.dni;

-- 5. Mostrar el nombre de los profesores y cuantas asignaturas imparten cada uno 

select p.nombre, count( a.codigo ) from profesores p natural join imparte i join asignaturas a group by p.nombre; 

-- 6. Mostrar el nombre del profesor y la descripción de la asignatura que imparte

select * from profesores p join imparte i on p.dni = i.dni join asignaturas a on a.codigo = i.asignatura;

