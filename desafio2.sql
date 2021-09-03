CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT C.cancao_id) AS cancoes,
COUNT(DISTINCT ART.artista_id) AS artistas,
COUNT(DISTINCT A.album_id) AS albuns
FROM
cancoes AS C
INNER JOIN album AS A
INNER JOIN artista AS ART;
