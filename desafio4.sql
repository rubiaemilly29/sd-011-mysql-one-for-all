CREATE VIEW top_3_artistas as
SELECT
a.artist_name AS `artista`,
COUNT(fa.artist_id) AS `seguidores`
FROM
SpotifyClone.FOLLOWING_ARTISTS AS fa
INNER JOIN SpotifyClone.ARTISTS AS a ON a.artist_id = fa.artist_id
GROUP BY
fa.artist_id
ORDER BY
`seguidores` DESC, `artista` ASC
LIMIT 3;
