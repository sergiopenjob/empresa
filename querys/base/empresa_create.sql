CREATE DATABASE EMPRESA;
use EMPRESA;

CREATE TABLE FABRICANTES
(
	codigo		CHAR(5)			PRIMARY KEY,		-- Código del fabricante
	nombre		VARCHAR(30) 	UNIQUE NOT NULL,	-- Nombre del fabricante
	timestamp	TIMESTAMP
);

CREATE TABLE PRODUCTOS
(
	cod_prod	CHAR(6)			PRIMARY KEY,			-- Código del producto
	descripcion VARCHAR(30) 	UNIQUE NOT NULL,		-- Nombre del producto
	cod_fabric	CHAR(5)			NOT NULL,				-- Código del fabricante
	precio		DECIMAL(7,2)	NOT NULL,				-- Precio producto (sin IVA)
	existencias INT(4)			NOT NULL DEFAULT 0,		-- Número de unidades en almacén
	imagen		BLOB(1000000),
	timestamp	TIMESTAMP,
	CONSTRAINT fk_productos_fabric FOREIGN KEY (cod_fabric) REFERENCES FABRICANTES(codigo)
);


CREATE TABLE EMPLEADOS
(
	num_emp		INT(3) 			PRIMARY KEY,	-- Número del empleado
	dni			CHAR(9)			UNIQUE NOT NULL,-- DNI del empleado
	nombre		VARCHAR(30) 	NOT NULL,		-- Nombre y apellidos del empleado
	fecha_nac	DATE			NOT NULL,		-- Fecha de nacimiento
	cod_ofic 	INT(2),							-- Número de la oficina donde trabaja el empleado
	cargo		VARCHAR(20)		NOT NULL,		-- Cargo que desempeña el empleado
	contrato 	DATE			NOT NULL,		-- Fecha en que se contrató al empleado
	jefe		INT(3),							-- Número de empleado de su jefe inmediato
	cuota 		DECIMAL(9,2),					-- Importe mínimo de ventas que debe alcanzar en el año
	ventas		DECIMAL(9,2),					-- Importe de ventas realizadas durante este año
	imagen		BLOB(1000000),
	timestamp	TIMESTAMP,
	CONSTRAINT fk_empleados_empleados FOREIGN KEY (jefe) REFERENCES EMPLEADOS (num_emp)
);


CREATE TABLE OFICINAS
(
	cod_ofic	INT(2)			PRIMARY KEY,	-- Código de la oficina
	ciudad		VARCHAR(30)		NOT NULL,		-- Ciudad donde está ubicada
	region		CHAR(6)			NOT NULL,		-- Región a la que pertenece
	director	INT(3)			NOT NULL,		-- Número de empleado del director de la oficina
	objetivo	DECIMAL(10,2)	NOT NULL,		-- Objetivo de ventas que debe alcanzar la oficina
	ventas		DECIMAL(10,2)	NOT NULL,		-- Ventas de la oficina
	timestamp	TIMESTAMP,
	CONSTRAINT fk_oficinas_empleados FOREIGN KEY (director) REFERENCES EMPLEADOS (num_emp)
);

ALTER TABLE EMPLEADOS ADD CONSTRAINT fk_empleados_oficinas FOREIGN KEY (cod_ofic) REFERENCES OFICINAS (cod_ofic);

CREATE TABLE CLIENTES
(
	num_clie	INT(4)			PRIMARY KEY,	-- Número de cliente
	dni			CHAR(9)			UNIQUE NULL,	-- DNI del cliente
	nombre		VARCHAR(30)		NOT NULL,		-- Nombre y apellidos del cliente
	telefono	INT(9)			NOT NULL,		-- Número de teléfono del cliente
	vendedor	INT(3),							-- Número empleado asignado al cliente (el que suele atenderle)
	lim_credito	DECIMAL(7,2),					-- Límite de crédito del cliente
	timestamp	TIMESTAMP,
	CONSTRAINT fk_clientes_empleados FOREIGN KEY (vendedor) REFERENCES EMPLEADOS (num_emp)
);

CREATE TABLE PEDIDOS
(
	num_pedido	INT(8)			PRIMARY KEY,		-- Nº de pedido, secuencial que lo identifica
	fecha		DATE			NOT NULL,			-- Fecha del pedido
	cliente		INT(4)			NOT NULL,			-- Código del cliente que efectúa el pedido
	vendedor	INT(3)			NOT NULL,			-- Código del empleado que tramita el pedido
	importe		DECIMAL(8,2)	NOT NULL DEFAULT 0,	-- Importe total del pedido (sin IVA)
	entregado	BOOLEAN			NOT NULL DEFAULT FALSE,
	timestamp	TIMESTAMP,
	CONSTRAINT fk_pedidos_clientes  FOREIGN KEY (cliente)  REFERENCES CLIENTES (num_clie),
	CONSTRAINT fk_pedidos_empleados FOREIGN KEY (vendedor) REFERENCES EMPLEADOS (num_emp)
);

CREATE TABLE PEDIDOS_PRODUCTOS
(
	num_pedido 	INT(8)			NOT NULL,		-- Nº de pedido, secuencial que lo identifica
	linea		INT(3)			NOT NULL,		-- Identificador de cada línea del pedido
	cod_prod	CHAR(6)			NOT NULL,		-- Código del producto solicitado
	cantidad	INT(3)			NOT NULL,		-- Cantidad solicitada
	precio		DECIMAL(7,2)	NOT NULL,		-- Precio producto en pedido (sin IVA)
	porc_dto	INT(3)			DEFAULT 0 CHECK (porc_dto BETWEEN 0 AND 100),	-- % descuento 
	importe		DECIMAL(7,2)	NOT NULL,		-- Importe de la línea del pedido (sin IVA)
	CONSTRAINT pk_pedidos_det PRIMARY KEY (num_pedido, linea),
	CONSTRAINT fk_pedidos_det_pedidos   FOREIGN KEY (num_pedido) REFERENCES PEDIDOS (num_pedido),
	CONSTRAINT fk_pedidos_det_productos FOREIGN KEY (cod_prod)   REFERENCES PRODUCTOS (cod_prod)
);
















