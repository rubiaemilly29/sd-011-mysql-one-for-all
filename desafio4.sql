CREATE VIEW top_3_artistas AS
SELECT CONCAT(first_name, ' ', last_name) AS 'artista',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.following_artists AS f
ON f.artist_id = a.artist_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
