CREATE VIEW perfil_artistas AS
SELECT ar.nome AS 'artista',
al.album AS 'album',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON ar.artista_id = s.artista_id
GROUP BY ar.nome, al.album
ORDER BY `seguidores` DESC, ar.nome, al.album;
