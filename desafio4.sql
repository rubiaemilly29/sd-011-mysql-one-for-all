CREATE VIEW top_3_artistas AS
SELECT
Artista.nome AS `artista`,
COUNT(UsuarioArtista.artista_id) AS `seguidores`
FROM
SpotifyClone.Artista Artista
INNER JOIN SpotifyClone.Usuario_Artista UsuarioArtista
ON Artista.artista_id = UsuarioArtista.artista_id
GROUP BY UsuarioArtista.artista_id
ORDER BY
COUNT(UsuarioArtista.artista_id) DESC,
Artista.nome
LIMIT 3;
