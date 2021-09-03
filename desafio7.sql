CREATE VIEW perfil_artistas AS
SELECT
Artista.nome AS `artista`,
Album.nome AS `album`,
COUNT(UsuarioArtista.artista_id) AS `seguidores`
FROM SpotifyClone.Artista Artista
INNER JOIN SpotifyClone.Album Album
ON Artista.artista_id = Album.artista_id
INNER JOIN SpotifyClone.Usuario_Artista UsuarioArtista
ON Artista.artista_id = UsuarioArtista.artista_id
GROUP BY Album.album_id
ORDER BY
`seguidores` DESC,
`artista`,
`album`;
