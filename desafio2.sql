USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS 
SELECT 
COUNT(A.id) AS cancoes,
(SELECT COUNT(id) FROM Artista) AS artistas,
(SELECT COUNT(id) FROM Album) AS albuns
FROM Cancao A;
