SELECT 
    ped.num_pedido,
    ped.importe,
    cli.nombre AS cliente,
	emp.nombre as vendedor_pedido, emp.nombre as vendedor_cliente
FROM
    pedidos ped
        JOIN
    clientes cli ON ped.cliente = cli.num_clie
        JOIN
    empleados emp ON ped.vendedor = emp.num_emp
		JOIN
	empleados on cli.vendedor = emp.num_emp
WHERE
    ped.importe < 3000;