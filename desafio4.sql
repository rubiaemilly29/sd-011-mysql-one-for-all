CREATE VIEW top_3_artistas AS SELECT A.artista AS artista, count(*) AS seguidores FROM SpotifyClone.usuario_seguindo_artista UA
INNER JOIN SpotifyClone.artistas A ON A.artista_id = UA.artista_id
GROUP BY UA.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;