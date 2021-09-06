CREATE VIEW estatisticas_musicais AS 
SELECT 
COUNT(A.id) AS cancoes,
(SELECT COUNT(id) FROM SpotifyClone.Artista) AS artistas,
(SELECT COUNT(id) FROM SpotifyClone.Album) AS albuns
FROM SpotifyClone.Cancao A;
