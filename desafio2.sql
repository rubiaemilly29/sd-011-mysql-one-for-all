CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(musica) AS cancoes FROM musicas),
(SELECT COUNT(artista) AS artistas FROM artistas),
(SELECT COUNT(album) AS albuns FROM albuns);
