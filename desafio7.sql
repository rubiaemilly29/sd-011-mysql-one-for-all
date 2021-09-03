CREATE VIEW perfil_artistas AS
SELECT
art.`nome` AS 'artista',
alb.album AS 'album',
COUNT(s_art.usuario_id) AS 'seguidores'
FROM
SpotifyClone.Artista AS art
INNER JOIN
SpotifyClone.Album AS alb ON art.id = alb.artista_id
INNER JOIN
SpotifyClone.Seguindo_Artista AS s_art ON art.id = s_art.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
