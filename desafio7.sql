CREATE VIEW perfil_artistas AS
SELECT artista AS 'artista',
nome AS 'album',
COUNT(usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindoartistas s_a
ON s_a.artista_id = al.artista_id
GROUP BY album_id
ORDER BY seguidores DESC, artista, album;
