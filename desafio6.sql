CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(PL.valor_plano), 2) faturamento_minimo,
FORMAT(MAX(PL.valor_plano), 2) faturamento_maximo,
FORMAT(AVG(PL.valor_plano), 2) faturamento_medio,
FORMAT(SUM(PL.valor_plano), 2) faturamento_total
FROM SpotifyClone.planos PL
INNER JOIN SpotifyClone.usuarios U
ON PL.plano_id = U.plano_id;
