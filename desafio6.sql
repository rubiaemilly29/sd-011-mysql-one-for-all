CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(p.Valor_Plano) AS `faturamento_minimo`,
        MAX(p.Valor_Plano) AS `faturamento_maximo`,
        ROUND(AVG(p.Valor_Plano), 2) AS `faturamento_medio`,
        SUM(p.Valor_Plano) AS `faturamento_total`
    FROM
        SpotifyClone.Usuario AS u
            INNER JOIN
        SpotifyClone.Plano AS p ON p.Plano_ID = u.Plano_ID;
