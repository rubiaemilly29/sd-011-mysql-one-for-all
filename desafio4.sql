CREATE VIEW top_3_artistas AS
SELECT a.Artista AS 'artista',
COUNT(sa.UsuarioID) AS 'seguidores'
FROM SpotifyClone.Artistas AS a
INNER JOIN SpotifyClone.Seguindo_artistas AS sa
ON a.ArtistaID = sa.ArtistaID
GROUP BY `artista`
HAVING `seguidores` > 1
ORDER BY `seguidores` DESC, `artista` ASC;
