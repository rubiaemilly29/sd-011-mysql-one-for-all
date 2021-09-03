CREATE VIEW perfil_artistas AS
SELECT AR.artista_nome AS artista,
AL.album_nome AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS AR
INNER JOIN SpotifyClone.albuns AS AL
ON AR.artista_id = AL.artista_id
INNER JOIN SpotifyClone.seguidores AS S
ON AR.artista_id = S.artista_id
GROUP BY AL.album_id
ORDER BY seguidores DESC, artista, album;
