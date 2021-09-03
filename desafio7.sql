CREATE VIEW `perfil_artistas` AS
SELECT ar.artista_name AS `artista`, a.album_name AS `album`, COUNT(*) AS `seguidores`
FROM SpotifyClone.artistas as ar
INNER JOIN SpotifyClone.albuns as a
ON ar.artista_id = a.artista_id 
INNER JOIN SpotifyClone.seguidores as s
ON ar.artista_id = s.artista_id 
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;

