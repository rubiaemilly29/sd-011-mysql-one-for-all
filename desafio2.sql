CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT(c.cancao)) AS 'cancoes',
COUNT(DISTINCT (ar.id)) AS 'artistas',
COUNT(DISTINCT (al.id))  AS 'albuns' 
FROM  SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.album  AS al ON al.id = c.album_id
INNER JOIN SpotifyClone.artista AS ar ON al.artista_id = ar.id;
