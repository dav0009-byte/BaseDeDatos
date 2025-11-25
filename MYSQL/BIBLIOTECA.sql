DROP DATABASE if exists biblioteca; 
create database biblioteca; 
use biblioteca; 

Create table autor(

cod_autor varchar (10) primary key,
nombre varchar(50)

);

Create Table Libro(

ISBN varchar (10) primary key,
Título varchar (100) not null,
Año date not null,
autor varchar(9),
foreign key (autor) references autor(cod_autor)

);

Create Table Socio (

cod_socio varchar (10) primary key, 
nombre varchar (15),
apellido varchar (20),
telefono varchar (13)

);

Create table Prestamo(

codigo int primary key auto_increment,
fecha_prestamo date,
fecha_devolucion date,
libro varchar (5)

);


alter table socio add direccion varchar(50);
alter table libro modify Título varchar (150) not null;
alter table socio modify telefono varchar(9) not null;
alter table socio drop telefono;
