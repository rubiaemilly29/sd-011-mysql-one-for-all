CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.Nome AS `usuario`, c.Nome AS `nome`
    FROM
        SpotifyClone.Usuario AS u
            INNER JOIN
        Historico_Reproducao AS h ON u.Usuario_ID = h.Usuario_ID
            INNER JOIN
        Cancao AS c ON h.Cancao_ID = c.Cancao_ID
    ORDER BY `usuario` , `nome` ASC;
