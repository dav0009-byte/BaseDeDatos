-- Diego Aranda Villar 78428619E

DROP DATABASE IF exists streaming;
create database streaming; 
use streaming;

CREATE table usuario(

	 Id_usuario int primary key auto_increment,
     email varchar (255),
	 contraseña varchar (255),
     nombre varchar (255),
     apellido1 varchar (255),
     apellido2 varchar (255) not null,
	Id_usuario_referido int not null
     
);

CREATE TABLE serie(

	 ID int primary key auto_increment,
     Nombre varchar (255)

);

Create table video(

		Id_video int primary key auto_increment,
        Titulo varchar (255),
        Sinopsis varchar (255),
        Imagen varchar (255),
        Video varchar (255), 
        Duracion varchar (255)
        
);

Create table Episodio(

	Id_Episodio int primary key,
    Temporada varchar (255),
    Numero varchar (255)

);

Create table Película (

	Id_Película int primary key, 
    Puntuacion_imdb varchar (255),
    Director varchar (255)  

);

Create table Género(

	Id_Género int primary key,
    Nombre varchar (255)

);

Create table usuario_ve_video (

		id_usuario int, 
        id_video int, 
        fecha_hora int,
        Primary key ( id_usuario, id_video, fecha_hora ), 
        foreign key (id_usuario) references usuario(Id_usuario) ,
        foreign key (id_video) references video(Id_video)

);

Create table video_pertenece_a_género(

	id_video int,
    id_género int,
    Primary key (id_video, id_género ),
	foreign key (id_video) references video(id_video),
    foreign key (id_género) references género(id_género)

);


alter table video add column Calidad_de_video ENUM("SD","HD","FullHD","4K") not null default "HD";
alter table usuario modify contraseña varchar (8) not null;
alter table video drop Sinopsis 
