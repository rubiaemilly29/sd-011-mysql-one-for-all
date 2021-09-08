CREATE VIEW perfil_artistas AS
SELECT A.artist artista,
B.album album,
COUNT(F.user_id) seguidores
FROM SpotifyClone.artists A
INNER JOIN SpotifyClone.albums B
ON A.artist_id = B.artist_id
INNER JOIN SpotifyClone.user_following F
ON A.artist_id = F.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
