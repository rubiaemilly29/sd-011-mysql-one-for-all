CREATE VIEW estatisticas_musicais AS
SELECT COUNT(c.cancao) AS cancoes, COUNT(DISTINCT at.artista) AS artistas, 
COUNT(DISTINCT ab.album) AS albuns 
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.album AS ab
ON c.album_id = ab.album_id
INNER JOIN SpotifyClone.artista AS at
ON at.artista_id = ab.artista_id;

