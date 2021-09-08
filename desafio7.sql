CREATE VIEW perfil_artistas AS
    SELECT 
        a.Nome AS `artista`,
        ab.Titulo AS `album`,
        COUNT(s.Usuario_ID) AS `seguidores`
    FROM
        SpotifyClone.Artista AS a
            INNER JOIN
        Album AS ab ON a.Artista_ID = ab.Artista_ID
            INNER JOIN
        Seguidores_Artistas AS s ON a.Artista_ID = s.Artista_ID
    GROUP BY artista , album
    ORDER BY `seguidores` DESC , `artista` , `album` ASC;
