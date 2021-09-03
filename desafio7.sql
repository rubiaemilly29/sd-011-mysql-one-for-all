CREATE VIEW perfil_artistas AS SELECT
t2.nome_artista AS `artista`,
t1.nome_album AS `album`,
(SELECT COUNT(id_usuario) FROM SpotifyClone.seguidores WHERE id_artista=t1.id_artista) AS `seguidores`
FROM SpotifyClone.albuns AS t1
INNER JOIN SpotifyClone.artistas AS t2
ON t1.id_artista = t2.id_artista
ORDER BY `seguidores` DESC, `artista`, `album`;
