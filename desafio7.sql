CREATE VIEW perfil_artistas AS
SELECT A.artist_name AS artista, AB.album_name AS album, COUNT(F.user_id) AS seguidores
FROM SpotifyClone.artists AS A JOIN SpotifyClone.albums AS AB ON A.artist_id = AB.artist_id 
JOIN SpotifyClone.following AS F ON A.artist_id = F.artist_id
GROUP BY artista, album ORDER BY seguidores DESC, artista, album;
