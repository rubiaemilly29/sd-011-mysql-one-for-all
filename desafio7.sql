CREATE VIEW perfil_artistas AS
SELECT
a.nome_artista AS artista,
a2.nome_album AS album,
COUNT(sa.id_usuario) AS seguidores
FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.artistas AS a
ON sa.id_artista = a.id_artista
INNER JOIN SpotifyClone.albuns AS a2
ON a.id_artista = a2.id_artista
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
