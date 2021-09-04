CREATE VIEW
top_3_artistas
AS
SELECT t1.name_artist AS "artista",
COUNT(t1.name_artist) AS "seguidores"
FROM SpotifyClone.artists AS t1
INNER JOIN SpotifyClone.following_artists AS t2
ON t1.artist_id = t2.artist_id
GROUP BY t1.name_artist
ORDER BY
`seguidores` DESC,
`artista` LIMIT 3;
