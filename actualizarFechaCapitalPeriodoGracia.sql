UPDATE "col$colocacion" c SET c.FECHA_CAPITAL = c.FECHA_INTERES WHERE c.ID_COLOCACION IN (SELECT c.ID_COLOCACION FROM COL_PERIODO_GRACIA p
INNER JOIN "col$colocacion" c ON c.ID_COLOCACION = p.ID_COLOCACION
WHERE p.ESTADO = 0 AND c.FECHA_INTERES > p.FECHA_REGISTRO)