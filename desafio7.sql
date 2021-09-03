CREATE VIEW perfil_artistas AS
SELECT nome AS `artista`,
titulo AS `album`,
COUNT(usuario_id) AS `seguidores`
FROM
SpotifyClone.artistas AS art
INNER JOIN
SpotifyClone.albuns AS alb
ON
alb.artista_id = art.artista_id
INNER JOIN
SpotifyClone.seguindo_artistas AS sa
ON
sa.artista_id = art.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
