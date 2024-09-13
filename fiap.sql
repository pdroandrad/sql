SELECT
    cli.cod_cliente "C�digo do Cliente",
    cli.nom_cliente "Nome do cliente",
    SUM(pd.val_total_pedido) "Total de Pedidos",
    round(AVG(pd.val_total_pedido),
    2) "M�dia de valores por cliente"
FROM
    pf1788.pedido pd JOIN PF1788.cliente cli
    ON (PD.COD_CLIENTE=CLI.COD_CLIENTE)
WHERE
    val_total_pedido < 1000
GROUP BY
    cli.cod_cliente,
    cli.nom_cliente
ORDER BY
    "M�dia de valores por cliente" ASC;