USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT COUNT(C.cancao) AS cancoes,
COUNT(DISTINCT(artista_id)) AS artistas,
COUNT(DISTINCT(AL.album)) AS albuns
FROM cancoes AS C
INNER JOIN albuns AS AL
ON C.album_id = AL.album_id;
