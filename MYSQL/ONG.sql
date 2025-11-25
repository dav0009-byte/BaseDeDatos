drop database if exists ONG; 
create database ONG; 
use ONG; 

Create table asociacion(

CIF varchar (9) primary key,
Denominacion varchar (20) not null, 
Direccion varchar (50),
Provincia varchar (15),
tipo ENUM("Ecologista","Integracion","Desarrollo"),
utilidadpublica ENUM("Si","No") default "Si"

);

Create table socio (

DNI varchar(9) primary key,
Nombre varchar (30),
Direccion varchar (50),
Provincia varchar (30),
fecha_alta date not null,
cuota_mensual DECIMAL(7,5) not null CHECK(cuota_mensual >= 0) ,
aportacion_anual DECIMAL (7,5) check (aportacion_anual), 
CIF varchar (20),
Foreign key (CIF) references asociacion(CIF) on delete set null on update cascade 

);

create table trabajador(

DNI char(9) primary key,
Nombre varchar (30) not null,
fingreso date,
tipo ENUM("asalariado","voluntario"),
irpf int check (irpf between 0 and 100),
pagos decimal (5,2) check (pagos >= 0),
profesion varchar (30),
horas int check (horas >= 0 and horas <=100),
edad int check (edad between 18 and 100)

);

create table proyecto (

id int auto_increment primary key,
pais varchar (20),
zona varchar (30),
objetivo varchar (100) 

);

create table trabaja (

dni char(9),
id_proyecto int,
primary key(dni, id_proyecto),
foreign key (dni) references trabajador(dni),
foreign key (id_proyecto) references proyecto(id)

);

alter table proyecto add column nro_beneficiario int not null check(nro_beneficiario >= 0);
alter table proyecto add CIF char(3) not null; 
alter table proyecto add foreign key (CIF) references asociacion (CIF) on delete restrict on update cascade;
