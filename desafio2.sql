CREATE VIEW estatisticas_musicais AS
SELECT COUNT(m.album_id) AS 'cancoes', COUNT(DISTINCT art.artista_id) AS 'artistas', COUNT(DISTINCT a.album_id) AS 'albuns'
FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.albuns a
ON m.album_id = a.album_id
INNER JOIN SpotifyClone.artistas art
ON art.artista_id = a.artista_id;
