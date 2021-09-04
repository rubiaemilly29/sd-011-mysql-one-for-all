CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(F.c_preice), 2) AS faturamento_minimo, 
FORMAT(MAX(F.c_preice), 2) AS faturamento_maximo,
FORMAT(AVG(CEIL(F.c_preice)), 2) AS faturamento_medio,
FORMAT(SUM(F.c_preice), 2) AS faturamento_total 
FROM t_users AS U
INNER JOIN t_flat AS F
ON U.fk_c_flat = F.id_flat;
