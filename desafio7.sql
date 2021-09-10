CREATE VIEW perfil_artistas AS
SELECT si.name AS artista, a.title AS album, COUNT(fs.user_id) AS seguidores
FROM SpotifyClone.singers si
INNER JOIN SpotifyClone.following_singers fs
ON fs.singer_id = si.singer_id
INNER JOIN SpotifyClone.albums a
ON a.singer_id = si.singer_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
