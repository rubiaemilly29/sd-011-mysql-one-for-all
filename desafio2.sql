CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(cancao_id) FROM SpotifyClone.cancao) AS 'cancoes',
(SELECT COUNT(artista_id) FROM SpotifyClone.artista) AS 'artistas',
COUNT(album_id) AS 'albuns' 
FROM SpotifyClone.album;
