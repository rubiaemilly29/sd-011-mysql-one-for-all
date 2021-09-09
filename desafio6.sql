CREATE VIEW faturamento_atual AS
    SELECT MIN(P.plan_price) AS faturamento_minimo,
    Max(P.plan_price) AS faturamento_maximo,
    ROUND(AVG(P.plan_price), 2) AS faturamento_medio,
    ROUND(SUM(P.plan_price), 2) AS faturamento_total
    FROM SpotifyClone.plans AS P
INNER JOIN SpotifyClone.users U ON U.plan_id = P.plan_id;
