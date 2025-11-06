DROP DATABASE if exists Tienda;
create database Tienda;
use Tienda; 

CREATE TABLE Clientes(

DNI int primary key auto_increment,
Nombre varchar(20),
Apellidos varchar(40),
Direccion varchar(100),
Fecha_nacimiento varchar(100)

);

create table Producto(

Codigo int primary key auto_increment,
Nombre varchar(20),
Precio_unit decimal(3,2)

);

create table Proveedor(

NIF int primary key auto_increment,
nombre varchar(20),
direccion varchar (50)

);

create table Clientes_compra_producto (

	DNI_cliente int,
    Codigo_producto int,
    
    
    primary key(DNI_cliente, Codigo_producto),
    foreign key (DNI_cliente) references Clientes(DNI),
    foreign key (Codigo_producto) references Producto(codigo)


);
