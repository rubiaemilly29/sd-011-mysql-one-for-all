CREATE VIEW top_3_artistas AS
SELECT a.name AS 'artista',
COUNT(u.user_id) AS 'seguidores'
FROM Artist_followers af
INNER JOIN Artist a
INNER JOIN User u
ON af.artist_id = a.artist_id AND af.user_id = u.user_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3
