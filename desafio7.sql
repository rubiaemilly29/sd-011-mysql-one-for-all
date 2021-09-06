CREATE VIEW perfil_artistas AS
SELECT
CONCAT(a.first_name, ' ', a.last_name) AS artista,
al.name AS album,
COUNT(fa.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS al
ON al.artist_id = a.artist_id
INNER JOIN SpotifyClone.following_artists AS fa
ON fa.artist_id = al.artist_id
GROUP BY artista, album
ORDER BY `seguidores` DESC, `artista`, `album`;
