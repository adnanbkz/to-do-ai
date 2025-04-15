
-- create main database
create database if not exists todolist;
-- use the database for the next querys:
use todolist;
-- Create the main table
Create table if not exists tareas (
id int auto_increment primary key,
titulo varchar(1000) not null,
descripcion varchar(5000),
estado boolean default false,
creado TIMESTAMP default CURRENT_TIMESTAMP
);

-- See if it works:
start transaction;
-- first insert:
insert into tareas(titulo,descripcion,estado) 
values("Primera tarea", "Hacer el proyecto,", true);
select * from tareas;
rollback;