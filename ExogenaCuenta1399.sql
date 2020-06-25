SELECT 1399 AS CODIGO, 1399 AS CONCEPTO, IIF(a.ID_IDENTIFICACION = 3,13,31) AS ID, a.ID_PERSONA, '' AS DIV, p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, p.NOMBRE, '' AS SNOMBRE, '' AS RAZON, d.DIRECCION, SUBSTRING(d.COD_MUNICIPIO FROM 1 FOR 2) AS DPTO, SUBSTRING(d.COD_MUNICIPIO FROM 3 FOR 3) AS MUNICIPIO, 169 AS PAIS, SUM(a.PCAPITAL + a.PINTERES) AS PROVISION , 0,0,0,0,0,0 FROM "col$causaciondiaria" a
LEFT JOIN "gen$persona" p ON a.ID_IDENTIFICACION = p.ID_IDENTIFICACION and a.ID_PERSONA = p.ID_PERSONA
LEFT JOIN (SELECT ID_PERSONA, MIN(DIRECCION) AS DIRECCION, MIN(COD_MUNICIPIO) AS COD_MUNICIPIO FROM "gen$direccion" GROUP BY ID_PERSONA) d ON d.ID_PERSONA = p.ID_PERSONA
WHERE a.FECHA_CORTE = '30.12.2019' AND a.PCAPITAL > 0
GROUP BY CODIGO, CONCEPTO, ID, a.ID_PERSONA, DIV, p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, p.NOMBRE, SNOMBRE, RAZON, DIRECCION, DPTO, MUNICIPIO, PAIS