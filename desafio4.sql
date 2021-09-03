USE SportifyClone;
CREATE VIEW top_3_artistas AS
SELECT a.name AS 'artista',
(SELECT COUNT(fa.artist_id)
FROM SpotifyClone.following_artists fa
WHERE fa.artist_id = a.artist_id) AS 'seguidores'
FROM SpotifyClone.artists a
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
