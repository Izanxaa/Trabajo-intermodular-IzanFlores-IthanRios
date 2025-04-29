-- crear base de datos de subastas
drop database if exists dbsubastasonline;
create database dbsubastasonline;
use dbsubastasonline;

-- crear tablas necesarias

-- tabla usuarios
drop table if exists usuarios;
create table usuarios (
	id int primary key auto_increment,
    email varchar(150) not null unique,
    nombre varchar(50) not null,
    contrasena varchar(150) not null,
    tipo_usuario enum("Administrador","Usuario") not null,
    direccion longtext,
    fecha_nac date
);

-- tabla productos
drop table if exists productos;
create table productos (
	id int primary key auto_increment,
    nombre varchar(100) not null,
    precio float not null,
    descripcion varchar(500),
    id_usuario int not null,
    constraint pk_id_usuarios foreign key (id_usuario) references usuarios(id)
 );
 
 drop table if exists ventas; 
 create table ventas(
	id int primary key auto_increment,
    nombre varchar(50),
    precio_actual float not null,
    descripcion varchar(500)
 );
 
 drop table if exists subasta;
 create table subasta(
	id int primary key auto_increment,
    nombre_usuario varchar(50) not null,
    precio_puja float not null,
    info_puja varchar(500)
 );
 
insert into usuarios (email, nombre, contrasena, tipo_usuario, direccion, fecha_nac)
values("hola@gmail.com", "root", 1234, "Administrador", "C/ hola", "2000-07-21");