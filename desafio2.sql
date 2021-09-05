CREATE VIEW  estatisticas_musicais AS
SELECT
( SELECT
COUNT(cancao)
FROM cancoes
) AS cancoes,
( SELECT
COUNT(artista)
FROM artistas
) AS artistas,
( SELECT
COUNT(album)
FROM albuns
) AS albuns
FROM
cancoes AS a
INNER JOIN albuns AS b
INNER JOIN artistas AS c
LIMIT 1;
