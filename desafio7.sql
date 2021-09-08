CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT a.artista AS 'artista',
al.album AS 'album',
(SELECT COUNT(*)
FROM SpotifyClone.Seguidores AS s
WHERE a.artista_id = s.artista_id
) AS 'seguidores'
FROM SpotifyClone.Artista AS a
INNER JOIN SpotifyClone.Albuns AS al 
ON al.artista_id = a.artista_id
ORDER BY 3 DESC, 1 ASC, 2 ASC;
