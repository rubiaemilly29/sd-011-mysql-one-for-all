CREATE VIEW estatisticas_musicais AS
SELECT (SELECT COUNT(*) FROM t_songs) AS cancoes,
(SELECT COUNT(*) FROM t_artists) AS artistas,
(SELECT COUNT(*) FROM t_album) AS albuns;
