CREATE VIEW top_3_artistas AS
SELECT
a.nome as 'artista',
COUNT(*) as 'seguidores'
FROM seguindo_artistas as s
JOIN usuarios as u ON u.id = s.usuario_id
JOIN artistas as a on a.id = s.artista_id
GROUP BY a.nome
ORDER BY seguidores DESC, artista
LIMIT 3;
