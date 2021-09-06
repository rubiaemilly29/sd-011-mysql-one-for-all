CREATE VIEW estatisticas_musicais AS 
SELECT
(SELECT count(*) FROM cancoes) AS cancoes,
(SELECT count(*) FROM artista) AS artistas,
(SELECT count(*) FROM album) AS albuns;
