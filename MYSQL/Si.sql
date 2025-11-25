DROP DATABASE if exists Mentor;
create database Mentor;
use Mentor;

create table aula (
    cod varchar(10) primary key,
    nombre varchar(100),
    dir varchar(255)
);

create table administrador_aula (
    dni varchar(10) primary key,
    nombre varchar(100),
    email varchar(100) unique
);

create table tutor (
    dni varchar(10) primary key,
    nombre varchar(100),
    email varchar(100) unique
);

create table curso (
    id_curso int auto_increment primary key,
    nombre varchar(100),
    url varchar(255)
);

/* 2. entidades que dependen de las anteriores */

create table alumno (
    dni varchar(10) primary key,
    nombre varchar(100),
    direccion varchar(255),
    tfno varchar(15),
    espanol boolean,
    email varchar(100) unique,
    cod_aula varchar(10) not null,
    foreign key (cod_aula) references aula(cod)
);

create table curso_libro (
    id_curso int,
    libro varchar(150),
    primary key (id_curso, libro),
    foreign key (id_curso) references curso(id_curso)
);

/* 3. tablas de unión (relaciones n:m) */

create table administra (
    dni_administrador varchar(10),
    cod_aula varchar(10),
    primary key (dni_administrador, cod_aula),
    foreign key (dni_administrador) references administrador_aula(dni),
    foreign key (cod_aula) references aula(cod)
);

create table tutoriza (
    dni_tutor varchar(10),
    id_curso int,
    primary key (dni_tutor, id_curso),
    foreign key (dni_tutor) references tutor(dni),
    foreign key (id_curso) references curso(id_curso)
);

create table matricular (
    dni_alumno varchar(10),
    id_curso int,
    f_ini date,
    f_fin date,
    primary key (dni_alumno, id_curso),
    foreign key (dni_alumno) references alumno(dni),
    foreign key (id_curso) references curso(id_curso)
);

create table coordina (
    dni_tutor varchar(10),
    dni_alumno varchar(10),
    primary key (dni_tutor, dni_alumno),
    foreign key (dni_tutor) references tutor(dni),
    foreign key (dni_alumno) references alumno(dni)
);

