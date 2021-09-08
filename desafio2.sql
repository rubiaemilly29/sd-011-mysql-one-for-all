CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT musica.musica_id) AS 'cancoes',
COUNT(DISTINCT artista.artista_id) AS 'artistas', 
COUNT(DISTINCT album.album_id) AS 'albuns' 
FROM SpotifyClone.musica AS musica
INNER JOIN SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album;
