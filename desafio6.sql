CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(preço) AS faturamento_minimo,
        MAX(preço) AS faturamento_maximo,
        ROUND(AVG(preço), 2) AS faturamento_medio,
        ROUND(SUM(preço), 2) AS faturamento_total
    FROM
        SpotifyClone.Planos AS p
            INNER JOIN
        SpotifyClone.Usuarios AS u ON p.Plano_ID = u.Plano_ID;
        