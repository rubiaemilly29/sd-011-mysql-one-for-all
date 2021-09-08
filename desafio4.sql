CREATE VIEW top_3_artistas AS
    SELECT 
        a.Nome AS `artista`, COUNT(u.Usuario_ID) AS `seguidores`
    FROM
        SpotifyClone.Artista AS a
            INNER JOIN
        Seguidores_Artistas AS s ON a.Artista_ID = s.Artista_ID
            INNER JOIN
        Usuario AS u ON s.Usuario_ID = u.Usuario_ID
    GROUP BY a.Nome
    ORDER BY `seguidores` DESC , `artista` ASC
    LIMIT 3;
