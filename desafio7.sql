CREATE VIEW perfil_artistas AS
SELECT
CONCAT(first_name, ' ', last_name) AS 'artista',
ab.album_name AS 'album',
COUNT(flw.user_id) AS 'seguidores'
FROM SpotifyClone.artists AS `at`
INNER JOIN SpotifyClone.albuns AS ab
ON ab.artist_id = `at`.artist_id
INNER JOIN SpotifyClone.user_following AS flw
ON flw.artist_id = `at`.artist_id
group by artista, album
ORDER BY `seguidores` DESC, `artista`, `album`;
