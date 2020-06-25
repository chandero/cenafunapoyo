SELECT 415020 AS CODIGO, 4001 AS CONCEPTO, IIF(a.ID_IDENTIFICACION = 3,13,31) AS ID, a.ID_PERSONA, '' AS DIV, p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, p.NOMBRE, '' AS SNOMBRE, '' AS RAZON,  d.DIRECCION, SUBSTRING(d.COD_MUNICIPIO FROM 1 FOR 2) AS DPTO, SUBSTRING(d.COD_MUNICIPIO FROM 3 FOR 3) AS MUNICIPIO, 169 AS PAIS, SUM(a.CREDITO - a.DEBITO), 0,0,0,0,0,0 FROM "con$auxiliar" a
LEFT JOIN "con$puc" c ON c.CODIGO = a.CODIGO AND c.MOVIMIENTO = 1
LEFT JOIN "gen$persona" p ON a.ID_IDENTIFICACION = p.ID_IDENTIFICACION and a.ID_PERSONA = p.ID_PERSONA
LEFT JOIN (SELECT ID_PERSONA, MIN(DIRECCION) AS DIRECCION, MIN(COD_MUNICIPIO) AS COD_MUNICIPIO FROM "gen$direccion" GROUP BY ID_PERSONA) d ON d.ID_PERSONA = p.ID_PERSONA
WHERE a.FECHA BETWEEN '01.01.2019' AND '31.12.2019' and a.CODIGO LIKE '415020%' and a.ESTADOAUX IN ('C','O')
GROUP BY CODIGO, CONCEPTO, ID, a.ID_PERSONA, DIV,  p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, p.NOMBRE, SNOMBRE, RAZON, DIRECCION, DPTO, MUNICIPIO, PAIS