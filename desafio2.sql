CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(id) AS 'cancoes',
COUNT(DISTINCT album_id) AS 'artistas',
COUNT(DISTINCT artista_id) AS 'albuns'
FROM
SpotifyClone.Cancoes;