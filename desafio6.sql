CREATE VIEW faturamento_atual AS
    SELECT MIN(P.valor_plano) AS faturamento_minimo,
    Max(P.valor_plano) AS faturamento_maximo,
    ROUND(AVG(P.valor_plano), 2) AS faturamento_medio,
    ROUND(SUM(P.valor_plano), 2) AS faturamento_total
    FROM SpotifyClone.planos AS P
INNER JOIN SpotifyClone.usuarios U ON  U.plano_id = U.plano_id;
