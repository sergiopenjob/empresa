-- EMPLEADOS (directores) por ahora no hay OFICINAS

INSERT
  INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cod_ofic, cargo, contrato, jefe, cuota, ventas)
VALUES (1, '11111111A', 'Jose', '1970-12-27', null,'Director General', '2000-9-20', null, null, null);

INSERT
  INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cod_ofic, cargo, contrato, jefe, cuota, ventas)
VALUES (2, '22222222B', 'Vicente Pantalla', '1972-2-2', null,'Director Málaga', '2002-2-2', 1, 100000, 90000);

INSERT
  INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cod_ofic, cargo, contrato, jefe, cuota, ventas)
VALUES (3, '33333333C', 'Julia López', '1973-3-3', null,'Director Madrid', '2003-3-3', 1, 200000, 230000);

INSERT
  INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cod_ofic, cargo, contrato, jefe, cuota, ventas)
VALUES (4, '44444444D', 'Julia Bermúdez', '1974-4-4', null,'Director Soria', '2004-4-4', 1, 8000, 11000);


-- OFICINAS (con su director)

INSERT INTO OFICINAS (cod_ofic, ciudad, region, director, objetivo, ventas)
VALUES (10, 'Málaga', 'SUR', 2, 700000, 300000);

INSERT INTO OFICINAS (cod_ofic, ciudad, region, director, objetivo, ventas)
VALUES (20, 'Madrid', 'CENTRO', 3, 800000, 500000);

INSERT INTO OFICINAS (cod_ofic, ciudad, region, director, objetivo, ventas)
VALUES (30, 'Soria', 'NORTE', 4, 50000, 58500);


-- EMPLEADOS (asignarlos a sus OFICINAS)

UPDATE EMPLEADOS SET cod_ofic = 10 WHERE num_emp = 2;
UPDATE EMPLEADOS SET cod_ofic = 20 WHERE num_emp = 3;
UPDATE EMPLEADOS SET cod_ofic = 30 WHERE num_emp = 4;


-- Resto de EMPLEADOS

INSERT INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cod_ofic, cargo, contrato, jefe, cuota, ventas)
VALUES (105, '11105105B', 'Javier Navarro', '1975-5-5', 10,'Vendedor', '2002-2-2', 2, 80000, 30000);

INSERT INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cod_ofic, cargo, contrato, jefe, cuota, ventas)
VALUES (106,'22106106X','Pedro Ruiz','1980-12-23',20,'Vendedor','2003-04-05', 3, 130000, 150000);

INSERT INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cod_ofic, cargo, contrato, jefe, cuota, ventas)
VALUES (107,'33107107Y','María Navarro','1960-05-28',30,'Vendedor','2004-12-01',4, 12000, 15000);

INSERT INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cargo, contrato, jefe)
VALUES (301, '11301301A', 'Ana Bustamante', '1972-03-01', 'Supervisora Ventas', '2002-10-20', 1);

INSERT INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cargo, contrato, jefe) 
VALUES (302, '12345302B', 'Diego Garcia', '1969-03-20', 'Informático', '2003-12-27', 1);

INSERT INTO EMPLEADOS (num_emp, dni, nombre, fecha_nac, cod_ofic, cargo, contrato, jefe, cuota, ventas)
VALUES (108, '25324117J', 'Pilar Luque', '1976-02-01', 10, 'Comercial', '2003-12-9', 2, 150000, 170000);


-- CLIENTES

INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (1,  '15123111', 'Silvia González', '657123131',   2, 20000);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (2,  '25234222', 'Rebeca García',   '657234242', 105, 30000);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (3,  '35345333', 'María Remón',     '657345353',   2, 22000);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (4,  '45456444', 'Mauricio López',  '952456464',   3, 33000);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (5,  null,       'Sergio Márquez',  '952567575',   3, 25000);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (6,  '65678666', 'Iván Campos',     '961678686',   4, 18000);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (7,  '75789777', 'Ricardo Pérez',   '951789797', 107,  6500);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (8,  '85890888', 'Carlos Contreras','958456893', 107,  3200);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (9,  '95901374', 'Victoria Prego',  '923528723', 105, 42500);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono, vendedor, lim_credito) VALUES (10, '10462518', 'Eusebio Navarro', '935712918', 105, 30700);
INSERT INTO CLIENTES (num_clie, dni, nombre, telefono)			              VALUES (11, '11376197', 'Yolanda Rincón',  '952623617');

-- FABRICANTES

INSERT INTO FABRICANTES (codigo, nombre) VALUES ('XEROX', 'XEROX España S.A.');
INSERT INTO FABRICANTES (codigo, nombre) VALUES ('ASUS', 'ASUS Corporation');
INSERT INTO FABRICANTES (codigo, nombre) VALUES ('CISCO', 'CISCO Networks');


-- PRODUCTOS

INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('CPI31B', 'CPU INTEL I3 3220', 			'ASUS',   125, 10);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('CPI51M', 'CPU INTEL I5 3330', 			'ASUS',   170, 15);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('CPI51X', 'CPU INTEL I5 3570', 			'ASUS',   180,  8);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('CPI71X', 'CPU INTEL I7 3770', 			'ASUS',   290, 12);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('PO525B', 'PORTATIL ASUS 5250', 			'ASUS',   330,  5);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('PO574M', 'PORTATIL ASUS 5741', 			'ASUS',   390,  7);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('PO383X', 'PORTATIL ASUS 3830TG', 		'ASUS',   450,  0);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('MO185B', 'MONITOR TFT 18,5\" LED', 		'ASUS',    92,  6);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('MO215M', 'MONITOR TFT 21.5\" LED', 		'ASUS',   100,  5);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('MO236X', 'MONITOR TFT 23.6\" LED', 		'ASUS',   175,  9);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('TRIN26', 'TECLADO/RATON INALAMBRICO',	'ASUS',    30, 20);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio)              VALUES ('IMW60B', 'IMPRESORA WorkCentre 6015',	'XEROX',  190);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio)              VALUES ('IMW65M', 'IMPRESORA WorkCentre 6505',	'XEROX',  400);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio)              VALUES ('IMW66A', 'IMPRESORA WorkCentre 6605',	'XEROX',  730);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio)              VALUES ('IMW87X', 'IMPRESORA ColorQube 8700', 	'XEROX', 2045);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('RO180B', 'ROUTER CISCO WiFi-N RV180W', 	'CISCO',  156, 10);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('RO016X', 'ROUTER CISCO Business RV016', 'CISCO',  340, 15);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('POMINX', 'NOTEBOOK MINI X PLUS', 		'ASUS',   450,  5);
INSERT INTO PRODUCTOS (cod_prod, descripcion, cod_fabric, precio, existencias) VALUES ('POMINI', 'NOTEBOOK MINI', 				'ASUS',   300,  8);


-- PEDIDOS

INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (1,  '2002-02-02',  3, 105, 867);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (2,  '2003-03-03',  4,   3, 315);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (3,  '2012-02-13',  5, 106, 3987.50);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (4,  '2012-02-14',  6, 108, 6075);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (5,  '2012-03-15',  7,   2, 370.50);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (6,  '2012-03-16',  8, 107, 1800);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (7,  '2012-04-17',  9, 105, 148.2);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (8,  '2013-01-18', 10, 105, 2706);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (9,  '2013-02-19', 11,   2, 335);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (10, '2013-02-20',  1,   2, 2824.65);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (11, '2013-03-21',  2, 105, 16425);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (12, '2013-03-22',  3, 108, 1042);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (13, '2013-04-23',  4,   3, 450);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (14, '2013-05-24',  5,   3, 1241);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (15, '2013-05-25',  6,   4, 414);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (16, '2013-06-06',  7, 107, 4300);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (17, '2013-06-07',  8, 107, 741);
INSERT INTO PEDIDOS (num_pedido, fecha, cliente, vendedor, importe) VALUES (18, '2013-06-10',  4, 106, 1475);


-- PEDIDOS PRODUCTOS

INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 1,1,'CPI31B', 3, 115,  0,  345.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 1,2,'MO185B', 3,  92,  0,  276.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 1,3,'TRIN26', 3,  25,  0,   75.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 1,4,'IMW60B', 1, 190, 10,  171.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 2,1,'CPI51M', 1, 175,  0,  175.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 2,2,'MO215M', 1, 115,  0,  115.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 2,3,'TRIN26', 1,  25,  0,   25.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 3,1,'CPI51X',10, 195, 10, 1755.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 3,2,'MO236X',10, 175,  5, 1662.50);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 3,3,'TRIN26',10,  25,  0,  250.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 3,4,'IMW65M', 1, 400, 20,  320.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 4,1,'PO383X',10, 450,  0, 4500.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 4,2,'PO383X', 5, 450, 30, 1575.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 5,1,'PO574M', 1, 390,  5,  370.50);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 6,1,'IMW87X', 1,2000, 10, 1800.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 7,1,'RO180B', 1, 156,  5,  148.20);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 8,1,'CPI31B',10, 115,  0, 1150.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 8,2,'MO215M',10, 115,  0, 1150.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 8,3,'TRIN26',10,  25,  0,  250.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 8,4,'CPI31B', 5, 115,100,    0.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 8,5,'MO215M', 5, 115,100,    0.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 8,6,'TRIN26', 5,  25,100,    0.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 8,7,'RO180B', 1, 156,  0,  156.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES ( 9,1,'PO525B', 1, 335,  0,  335.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (10,1,'MO236X', 3, 175,  5,  498.75);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (10,2,'CPI31B', 3, 115, 10,  310.50);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (10,3,'TRIN26', 3,  25,  0,   75.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (10,4,'IMW87X', 1,2000, 10, 1800.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (10,5,'RO180B', 1, 156, 10,  140.40);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (11,1,'PO383X',30, 450,  5,12825.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (11,2,'IMW87X', 2,2000, 10, 3600.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (12,1,'RO016X', 1, 340,  0,  340.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (12,2,'RO180B', 5, 156, 10,  702.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (13,1,'PO383X', 1, 450,  0,  450.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (14,1,'IMW66A', 2, 730, 15, 1241.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (15,1,'MO185B', 5,  92, 10,  414.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (16,1,'CPI71X',10, 290,  0, 2900.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (16,2,'TRIN26',10,  25,  0,  250.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (16,3,'MO215M',10, 115,  0, 1150.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (17,1,'PO574M', 2, 390,  5,  741.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (18,1,'POMINI', 5, 300, 10, 1350.00);
INSERT INTO PEDIDOS_PRODUCTOS (num_pedido, linea, cod_prod, cantidad, precio, porc_dto, importe) VALUES (18,2,'TRIN26', 5,  25,  0,  125.00);


-- Parches

INSERT INTO OFICINAS (cod_ofic, ciudad, region, director, objetivo, ventas)
VALUES (40, 'Granada', 'SUR', 301, 0, 0);

UPDATE PEDIDOS
   SET entregado = TRUE
 WHERE num_pedido <= 10;


UPDATE PEDIDOS SET TIMESTAMP = CURRENT_TIMESTAMP;
UPDATE CLIENTES SET TIMESTAMP = CURRENT_TIMESTAMP;
UPDATE PRODUCTOS SET TIMESTAMP = CURRENT_TIMESTAMP;
UPDATE EMPLEADOS SET TIMESTAMP = CURRENT_TIMESTAMP;
UPDATE OFICINAS SET TIMESTAMP = CURRENT_TIMESTAMP;
UPDATE FABRICANTES SET TIMESTAMP = CURRENT_TIMESTAMP;

