CREATE VIEW top_3_artistas AS
 SELECT sa.name AS `artista`,
 (SELECT COUNT(sf.artist_id)
 FROM SpotifyClone.following_artists sf
 WHERE sf.artist_id = sa.artist_id) AS `seguidores`
 FROM SpotifyClone.artists sa
 ORDER BY `seguidores` DESC, `artista`
 LIMIT 3;
