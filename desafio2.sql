CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(son.ID) AS cancoes,
COUNT(DISTINCT art.ID) AS artistas,
COUNT(DISTINCT alb.ID) AS albuns
FROM songs AS son
INNER JOIN artists AS art
ON son.ArtistID = art.ID
INNER JOIN albuns AS alb
ON son.AlbumID = alb.ID;
