create database if not exists empresa;
use empresa;

create table fabricante (
    codigo char(5) primary key not null,
    nombre varchar(30) unique
);

create table producto (
    codigo_producto char(6) primary key,
    descripcion varchar(30) not null,
    precio float(7 , 2 ) not null,
    existencias int(4) not null,
    codigo_fabricante char(5) not null
);

ALTER TABLE producto 
ADD CONSTRAINT fk_producto_fabricante 
FOREIGN KEY (codigo_fabricante) 
REFERENCES fabricante(codigo);


create table empleado (
    num_empleado int(3) primary key auto_increment,
    dni varchar(9) not null unique,
    nombre varchar(30) not null,
    fecha_contrato date not null,
    fecha_nacimiento date not null,
    cargo varchar(20) not null,
    cuota float(9 , 2 ),
    ventas float(9 , 2 ),
    codigo_oficina int(2),
    jefe int(3)
);

ALTER TABLE empleado 
ADD CONSTRAINT fk_empleado_jefe 
FOREIGN KEY (jefe) 
REFERENCES empleado(num_empleado);


create table oficina (
    codigo_oficina INT(2) primary key,
    ciudad varchar(30) not null,
    region char(6) not null,
    objetivo float(9 , 2 ),
    ventas float(10 , 2 )
);

ALTER TABLE empleado 
ADD CONSTRAINT fk_empleado_oficina 
FOREIGN KEY (codigo_oficina) 
REFERENCES oficina(codigo_oficina);

create table cliente (
    num_cliente int(4) primary key,
    dni varchar(9) unique,
    nombre varchar(30) not null,
    telefono int(9),
    limite_credito float(7 , 2 ),
    vendedor_id int(3)
);

ALTER TABLE cliente 
ADD CONSTRAINT fk_cliente_empleado 
FOREIGN KEY (vendedor_id) 
REFERENCES empleado(num_empleado);

create table pedido (
    num_pedido int(5) primary key auto_increment,
    fecha date not null,
    importe float(8 , 2 ) not null,
    entregado boolean not null default false,
    vendedor_id int(3) not null,
    cliente_id int(4) not null
);

create table pedidos_producto (
    num_pedido int(4),
    linea int(3),
    num_producto char(6) not null,
    cantidad int(3) not null,
    precio float(7 , 2 ) not null,
    porc_dto float(3) not null,
    importe float(7 , 2 ) not null,
	primary key (num_pedido, linea)
);

ALTER TABLE pedido 
ADD CONSTRAINT fk_pedido_vendedor 
FOREIGN KEY (vendedor_id) 
REFERENCES empleado(num_empleado);

ALTER TABLE pedido 
ADD CONSTRAINT fk_pedido_cliente 
FOREIGN KEY (cliente_id) 
REFERENCES cliente(num_cliente);

ALTER TABLE pedidos_producto 
ADD CONSTRAINT fk_pedido 
FOREIGN KEY (num_pedido) 
REFERENCES pedido(num_pedido);

ALTER TABLE pedidos_producto 
ADD CONSTRAINT fk_pedido_producto 
FOREIGN KEY (num_producto) 
REFERENCES producto(codigo_producto);
