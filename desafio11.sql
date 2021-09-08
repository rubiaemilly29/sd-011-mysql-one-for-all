CREATE VIEW cancoes_premium AS
    SELECT 
        c.Nome AS `nome`,
        COUNT(DISTINCT h.Cancao_ID) AS `reproducoes`
    FROM
        SpotifyClone.Cancao AS c
            INNER JOIN
        Usuario AS u ON u.Plano_ID IN (2 , 3)
            INNER JOIN
        Historico_Reproducao AS h ON c.Cancao_ID = h.Cancao_ID
            AND u.Usuario_ID = h.Usuario_ID
    GROUP BY `nome`
    ORDER BY `nome` ASC;
