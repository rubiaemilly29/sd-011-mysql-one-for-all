CREATE VIEW perfil_artistas AS SELECT
  a.artista_nome AS artista,
  al.album_nome AS album,
  COUNT(af.usuario_id) AS seguidores
FROM SpotifyClone.artistas as a
INNER JOIN SpotifyClone.albuns as al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.artistas_seguidores AS af
ON a.artista_id = af.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
