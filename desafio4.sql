CREATE VIEW top_3_artistas AS
SELECT 
artists.artist_name AS 'artista',

(SELECT COUNT(*) FROM SpotifyClone.artist_followers AS followers
WHERE artists.artist_id = followers.artist_id)  AS 'seguidores'
-- O seu próximo desafio pode estar dando errado porque VOCÊ ESQUECEU DO FROM. 
FROM SpotifyClone.artists AS artists

ORDER BY seguidores DESC, artista ASC

LIMIT 3;
