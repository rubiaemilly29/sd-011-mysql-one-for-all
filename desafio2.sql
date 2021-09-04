CREATE VIEW estatisticas_musicais AS
select COUNT(cancoes) AS cancoes,
(select COUNT(artista) from artistas) AS artistas,
(select COUNT(album) from albuns) AS albuns
from cancoes;
