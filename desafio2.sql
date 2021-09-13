CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(*) FROM Cancoes) AS cancoes,
(SELECT COUNT(*) FROM Artistas) AS artistas,
(SELECT COUNT(*) FROM Albuns) AS albuns;
