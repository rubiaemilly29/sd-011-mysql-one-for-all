CREATE VIEW estatisticas_musicais AS
SELECT COUNT(*) AS 'cancoes',
(
SELECT COUNT(*)
FROM SpotifyClone.Performers
)  AS 'artistas',
(
SELECT COUNT(*)
FROM SpotifyClone.Albuns
) AS 'albuns'
FROM SpotifyClone.Songs;
