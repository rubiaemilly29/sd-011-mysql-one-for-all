CREATE VIEW estatisticas_musicais AS
SELECT COUNT(name) AS 'cancoes',
(SELECT COUNT(artist_id) FROM artists) AS 'artistas',
(SELECT COUNT(album_id) FROM albuns) AS 'albuns'
FROM SpotifyClone.songs;
