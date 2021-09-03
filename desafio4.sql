SELECT * FROM artist;
SELECT * from user_follow;

SELECT a.artist_name AS 'artista',
COUNT(a.artist_name) AS 'seguidores'
FROM artist AS a
INNER JOIN user_follow as uf ON a.artist_id = uf.artist_id
GROUP BY a.artist_name
ORDER BY COUNT(a.artist_name) DESC, a.artist_name
LIMIT 3;
