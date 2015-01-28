create database empresa;
use empresa;

create table fabricantes
(
	codigo		char(5)			primary key,		-- código del fabricante
	nombre		varchar(30) 	unique not null,	-- nombre del fabricante
	timestamp	timestamp
);

create table productos
(
	cod_prod	char(6)			primary key,			-- código del producto
	descripcion varchar(30) 	unique not null,		-- nombre del producto
	cod_fabric	char(5)			not null,				-- código del fabricante
	precio		decimal(7,2)	not null,				-- precio producto (sin iva)
	existencias int(4)			not null default 0,		-- número de unidades en almacén
	imagen		blob(1000000),
	timestamp	timestamp,
	constraint fk_productos_fabric foreign key (cod_fabric) references fabricantes(codigo)
);


create table empleados
(
	num_emp		int(3) 			primary key,	-- número del empleado
	dni			char(9)			unique not null,-- dni del empleado
	nombre		varchar(30) 	not null,		-- nombre y apellidos del empleado
	fecha_nac	date			not null,		-- fecha de nacimiento
	cod_ofic 	int(2),							-- número de la oficina donde trabaja el empleado
	cargo		varchar(20)		not null,		-- cargo que desempeña el empleado
	contrato 	date			not null,		-- fecha en que se contrató al empleado
	jefe		int(3),							-- número de empleado de su jefe inmediato
	cuota 		decimal(9,2),					-- importe mínimo de ventas que debe alcanzar en el año
	ventas		decimal(9,2),					-- importe de ventas realizadas durante este año
	imagen		blob(1000000),
	timestamp	timestamp,
	constraint fk_empleados_empleados foreign key (jefe) references empleados (num_emp)
);


create table oficinas
(
	cod_ofic	int(2)			primary key,	-- código de la oficina
	ciudad		varchar(30)		not null,		-- ciudad donde está ubicada
	region		char(6)			not null,		-- región a la que pertenece
	director	int(3)			not null,		-- número de empleado del director de la oficina
	objetivo	decimal(10,2)	not null,		-- objetivo de ventas que debe alcanzar la oficina
	ventas		decimal(10,2)	not null,		-- ventas de la oficina
	timestamp	timestamp,
	constraint fk_oficinas_empleados foreign key (director) references empleados (num_emp)
);

alter table empleados add constraint fk_empleados_oficinas foreign key (cod_ofic) references oficinas (cod_ofic);

create table clientes
(
	num_clie	int(4)			primary key,	-- número de cliente
	dni			char(9)			unique null,	-- dni del cliente
	nombre		varchar(30)		not null,		-- nombre y apellidos del cliente
	telefono	int(9)			not null,		-- número de teléfono del cliente
	vendedor	int(3),							-- número empleado asignado al cliente (el que suele atenderle)
	lim_credito	decimal(7,2),					-- límite de crédito del cliente
	timestamp	timestamp,
	constraint fk_clientes_empleados foreign key (vendedor) references empleados (num_emp)
);

create table pedidos
(
	num_pedido	int(8)			primary key,		-- nº de pedido, secuencial que lo identifica
	fecha		date			not null,			-- fecha del pedido
	cliente		int(4)			not null,			-- código del cliente que efectúa el pedido
	vendedor	int(3)			not null,			-- código del empleado que tramita el pedido
	importe		decimal(8,2)	not null default 0,	-- importe total del pedido (sin iva)
	entregado	boolean			not null default false,
	timestamp	timestamp,
	constraint fk_pedidos_clientes  foreign key (cliente)  references clientes (num_clie),
	constraint fk_pedidos_empleados foreign key (vendedor) references empleados (num_emp)
);

create table pedidos_productos
(
	num_pedido 	int(8)			not null,		-- nº de pedido, secuencial que lo identifica
	linea		int(3)			not null,		-- identificador de cada línea del pedido
	cod_prod	char(6)			not null,		-- código del producto solicitado
	cantidad	int(3)			not null,		-- cantidad solicitada
	precio		decimal(7,2)	not null,		-- precio producto en pedido (sin iva)
	porc_dto	int(3)			default 0 check (porc_dto between 0 and 100),	-- % descuento 
	importe		decimal(7,2)	not null,		-- importe de la línea del pedido (sin iva)
	constraint pk_pedidos_det primary key (num_pedido, linea),
	constraint fk_pedidos_det_pedidos   foreign key (num_pedido) references pedidos (num_pedido),
	constraint fk_pedidos_det_productos foreign key (cod_prod)   references productos (cod_prod)
);