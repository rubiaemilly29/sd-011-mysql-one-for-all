CREATE VIEW estatisticas_musicais AS
SELECT COUNT(C.cancao) AS cancoes,
COUNT(DISTINCT(artista_id)) AS artistas,
COUNT(DISTINCT(AL.album)) AS albuns
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.albuns AS AL
ON C.album_id = AL.album_id;
