CREATE VIEW top_3_artistas AS
SELECT AR.nome AS artista, COUNT(U.usuario) AS seguidores
FROM SpotifyClone.artistas AS AR
INNER JOIN SpotifyClone.tabela_seguidores_artistas AS TSA 
ON TSA.id_artista = AR.id_artista
INNER JOIN SpotifyClone.usuarios AS U 
ON TSA.id_usuario = U.id_usuario
GROUP BY AR.nome ORDER BY 2 DESC, 1 ASC LIMIT 3;
