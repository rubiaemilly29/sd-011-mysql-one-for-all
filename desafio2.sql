CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(*) FROM spotifyclone.cancoes) AS `cancoes`,
(SELECT COUNT(*) FROM spotifyclone.artistas) AS `artistas`,
(SELECT COUNT(*) FROM spotifyclone.albuns) AS `albuns`;
