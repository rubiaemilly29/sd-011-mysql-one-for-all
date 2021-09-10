CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(c.*) cancoes,
COUNT(a.*) artistas,
COUNT(ab.*) albuns
FROM SpotifyClone.Cancoes c 
INNER JOIN SpotifyClone.Albuns ab ON c.album_id = ab.album_id
INNER JOIN SpotifyClone.Artistas a ON a.artista_id = ab.artista_id;
