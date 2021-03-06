SELECT e.ID_COLOCACION, p.NOMBRE || ' ' || p.PRIMER_APELLIDO || ' ' || p.SEGUNDO_APELLIDO AS NOMBRE, SUM(e.ABONO_ANTICIPADO) AS ANTICIPADO, SUM(e.ABONO_CXC) AS CAUSADO, SUM(ABONO_SERVICIOS) AS SERVICIO, SUM(ABONO_MORA) AS MORA FROM "col$extracto" e
LEFT JOIN "col$colocacion" c ON c.ID_COLOCACION = e.ID_COLOCACION 
LEFT JOIN "gen$persona" p ON p.ID_IDENTIFICACION = c.ID_IDENTIFICACION AND p.ID_PERSONA = c.ID_PERSONA 
WHERE e.FECHA_EXTRACTO BETWEEN '01.12.2020' AND '31.12.2020'
GROUP BY e.ID_COLOCACION, p.NOMBRE, p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO