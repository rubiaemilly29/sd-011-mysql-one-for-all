CREATE VIEW perfil_artistas AS
SELECT a.artista AS 'artista',
al.nome AS 'album',
COUNT(s.usuarioId) AS 'seguidores'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al ON al.artistaId = a.artistaId
INNER JOIN SpotifyClone.seguindoartistas AS s ON s.artistaId = al.artistaId
GROUP BY a.artista, al.nome
ORDER BY `seguidores` DESC, `artista`, `album`;
