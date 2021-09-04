CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(*) FROM SpotifyClone.Cancoes) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.Artistas) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.Albuns) AS albuns;
