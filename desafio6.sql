CREATE VIEW faturamento_atual AS
SELECT 
    ROUND(MIN(plan.price), 2) AS faturamento_minimo,
    ROUND(MAX(plan.price), 2) AS faturamento_maximo,
    ROUND(AVG(plan.price), 2) AS faturamento_medio,
    ROUND(SUM(plan.price), 2) AS faturamento_total
FROM
    SpotifyClone.users AS `user`
        INNER JOIN
    SpotifyClone.plans AS plan ON `user`.planId = plan.planId;
