CREATE VIEW perfil_artistas AS
SELECT ar.nome AS artista, titulo AS album, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo AS s ON ar.artista_id = s.artista_id
GROUP BY artista, titulo
ORDER BY seguidores DESC, artista ASC;