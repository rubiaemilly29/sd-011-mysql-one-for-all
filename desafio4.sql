CREATE VIEW top_3_artistas AS
SELECT
CONCAT(a.first_name, ' ', a.last_name) AS artista,
COUNT(*) AS seguidores
from SpotifyClone.artists AS a
inner join SpotifyClone.user_following as follow
ON follow.artist_id = a.artist_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
