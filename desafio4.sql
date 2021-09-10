CREATE VIEW top_3_artistas AS
SELECT
a.nome_artista as 'artista',
COUNT(*) as 'seguidores'
FROM SpotifyClone.seguindo_artistas as s
JOIN SpotifyClone.usuarios as u ON u.usuario_id = s.usuario_id
JOIN SpotifyClone.artistas as a on a.artista_id = s.artista_id
GROUP BY a.nome_artista
ORDER BY seguidores DESC, artista
LIMIT 3;
