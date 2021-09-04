CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS 'artista', COUNT(sa.artista_id) AS 'seguidores'
FROM SpotifyClone.artista a
INNER JOIN SpotifyClone.seguindo_artistas sa ON sa.artista_id = a.id
GROUP BY a.nome_artista
ORDER BY `seguidores` DESC, `artista` LIMIT 3;
