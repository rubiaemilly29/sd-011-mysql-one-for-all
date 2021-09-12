USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT COUNT(C.cancao) AS cancoes,
COUNT(A.artista_id) AS artistas,
COUNT(AL.album) AS albuns
FROM cancoes AS C
INNER JOIN albuns AS AL
ON C.album_id = AL.album_id
INNER JOIN  artistas AS A
ON A.artista_id = AL.artista_id;
