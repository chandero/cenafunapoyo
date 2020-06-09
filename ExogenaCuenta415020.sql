SELECT 415020 AS CODIGO, 4001 AS CONCEPTO, IIF(a.ID_IDENTIFICACION = 3,13,31) AS ID, a.ID_PERSONA, '' AS DIV, p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, p.NOMBRE, '' AS SNOMBRE, '' AS RAZON, 169 AS PAIS, SUM(a.CREDITO), 0,0,0,0,0,0 FROM "con$auxiliar" a
LEFT JOIN "gen$persona" p ON a.ID_IDENTIFICACION = p.ID_IDENTIFICACION and a.ID_PERSONA = p.ID_PERSONA
WHERE a.FECHA BETWEEN '01.01.2019' AND '31.12.2019' and a.CODIGO LIKE '415020%' and a.ESTADOAUX IN ('C','O')
GROUP BY CODIGO, CONCEPTO, ID, a.ID_PERSONA, DIV,  p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, p.NOMBRE, SNOMBRE, RAZON, PAIS