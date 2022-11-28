SELECT 1390 as CODIGO, 1318 AS CONCEPTO, IIF(c.ID_IDENTIFICACION = 3,13,31) AS ID, c.ID_PERSONA, '' AS DIV, p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, p.NOMBRE, '' AS SNOMBRE, '' AS RAZON,  d.DIRECCION, SUBSTRING(d.COD_MUNICIPIO FROM 1 FOR 2) AS DPTO, SUBSTRING(d.COD_MUNICIPIO FROM 3 FOR 3) AS MUNICIPIO,  169 AS  PAIS, SUM(c.PCAPITAL + c.PINTERES + c.PCOSTAS) AS PROVISION FROM "col$causaciondiaria" c 
LEFT JOIN "gen$persona" p ON p.ID_IDENTIFICACION = c.ID_IDENTIFICACION and p.ID_PERSONA = c.ID_PERSONA
LEFT JOIN (SELECT ID_PERSONA, MIN(DIRECCION) AS DIRECCION, MIN(COD_MUNICIPIO) AS COD_MUNICIPIO FROM "gen$direccion" GROUP BY ID_PERSONA) d ON d.ID_PERSONA = p.ID_PERSONA
WHERE c.FECHA_CORTE = '30.12.2019'
GROUP BY CODIGO, CONCEPTO, ID, ID_PERSONA, DIV, PRIMER_APELLIDO, SEGUNDO_APELLIDO, NOMBRE, SNOMBRE, RAZON, DIRECCION, DPTO, MUNICIPIO, PAIS
ORDER BY ID_PERSONA