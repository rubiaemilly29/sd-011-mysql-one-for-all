CREATE VIEW perfil_artistas AS
SELECT ar.name AS 'artista', al.name AS 'album',
(SELECT COUNT(fa.artist_id)
FROM SpotifyClone.following_artists fa
WHERE fa.artist_id = ar.artist_id) AS 'seguidores'
FROM SpotifyClone.artists ar
INNER JOIN SpotifyClone.albuns al
ON al.artist_id = ar.artist_id
ORDER BY `seguidores` DESC, `artista`, `album`;
