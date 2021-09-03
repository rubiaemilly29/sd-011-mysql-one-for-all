CREATE VIEW estatisticas_musicais AS
SELECT 
((SELECT COUNT(*) FROM SpotifyClone.SONGS )) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.ARTISTS ) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.ALBUMS ) AS albuns;
