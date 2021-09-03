-- CREATE VIEW perfil_artistas AS
SELECT
A.artista AS `artista`,
ALB.album AS `album`,
(SELECT COUNT(artista_id) FROM SpotifyClone.Seguidores WHERE artista_id = A.artista_id) AS `seguidores`
FROM SpotifyClone.Album AS ALB
INNER JOIN SpotifyClone.Artista AS A
ON A.artista_id = ALB.artista_id;
