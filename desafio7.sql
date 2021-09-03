CREATE VIEW perfil_artistas AS
SELECT art.artista_name 'artista', a.album_name 'album', COUNT(s.usuario_id) 'seguidores'
FROM SpotifyClone.albuns a
INNER JOIN SpotifyClone.artistas art
ON art.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguindo s
ON a.artista_id = s.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
