CREATE VIEW
perfil_artistas
AS
SELECT
t1.name_artist AS "artista",
t2.name_album AS "album",
COUNT(t3.artist_id) AS "seguidores"
FROM SpotifyClone.artists AS t1
INNER JOIN SpotifyClone.album AS t2
ON t1.artist_id = t2.artist_id
INNER JOIN SpotifyClone.following_artists AS t3
ON t2.artist_id = t3.artist_id
GROUP BY t2.album_id
ORDER BY
`seguidores` DESC,
`artista`,
`album`;
