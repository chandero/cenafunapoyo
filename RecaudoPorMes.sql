SELECT EXTRACT(DAY FROM e.FECHA_EXTRACTO), e.CODIGO_PUC, p.NOMBRE, SUM(e.VALOR_DEBITO) FROM "col$extractodet" e
LEFT JOIN "con$puc" p ON p.CODIGO = e.CODIGO_PUC
WHERE EXTRACT(MONTH FROM e.FECHA_EXTRACTO) = 2 AND EXTRACT(YEAR FROM e.FECHA_EXTRACTO) = 2020 AND e.CODIGO_PUC LIKE '11%'
GROUP BY e.FECHA_EXTRACTO, e.CODIGO_PUC, p.NOMBRE
ORDER BY e.FECHA_EXTRACTO, e.CODIGO_PUC