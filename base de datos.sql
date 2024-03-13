CREATE DATABASE negocio;

CREATE table provedores(
    id_provedor serial primary key,
    nombre varchar(30),
    apellido varchar(30),
    numero_telefono int,
    direccion varchar(40),
);

CREATE table productos(
    id_producto int, 
    nombre varchar(30),
    no_productos int,
    lote varchar(30),
    id_provedores int REFERENCES provedores(id_provedor) ON DELETE RESTRICT
);