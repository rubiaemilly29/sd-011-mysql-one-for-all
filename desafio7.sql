CREATE VIEW perfil_artistas AS
SELECT a.Artista AS 'artista',
ab.Album AS 'album',
(
SELECT COUNT(*)
FROM SpotifyClone.Seguindo_artistas
WHERE ArtistaID = a.ArtistaID
) AS 'seguidores'
FROM SpotifyClone.Artistas AS a
INNER JOIN SpotifyClone.Albuns AS ab
ON a.ArtistaID = ab.ArtistaID
ORDER BY `seguidores` DESC, `artista`, `album`;
