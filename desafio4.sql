CREATE VIEW top_3_artistas AS
SELECT A.Artist artista,
COUNT(AH.User_id) seguidores
FROM SpotifyClone.Artists A
INNER JOIN SpotifyClone.Artist_history AH
ON AH.Artist_id = A.Artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
