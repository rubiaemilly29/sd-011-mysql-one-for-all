CREATE VIEW estatisticas_musicais AS
SELECT
(select count(*) from musica) AS "cancoes",
(select count(*) from artista) as "artistas",
(select count(*) from album) as "albuns"
