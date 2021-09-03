CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT a.art_name AS `artista`, COUNT(*) AS `seguidores`
FROM SpotifyClone.user_follows_artist AS ufa
INNER JOIN SpotifyClone.artists AS a
ON ufa.art_id = a.art_id
GROUP BY ufa.art_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
