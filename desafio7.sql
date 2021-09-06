CREATE VIEW perfil_artistas AS SELECT
art.artista_nome AS `artista`,
alb.album_nome AS `album`,
(SELECT COUNT(artista_id)
FROM SpotifyClone.seguindo_artistas AS seg
WHERE art.artista_id = seg.artista_id) AS `seguidores`
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albums AS alb
ON art.artista_id = alb.artista_id
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
