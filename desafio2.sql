CREATE VIEW estatisticas_musicais AS 
SELECT
(SELECT COUNT(*) FROM SpotifyClone.songs) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.singers) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.albums) AS albums;
