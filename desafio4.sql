CREATE VIEW top_3_artistas AS
SELECT ARTISTAS.artista_nome AS 'artista',
(SELECT COUNT(SEGUIDORES.artista)
FROM SpotifyClone.SEGUIDORES
WHERE SEGUIDORES.artista = ARTISTAS.artista_id) AS 'seguidores'
FROM SpotifyClone.ARTISTAS
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
