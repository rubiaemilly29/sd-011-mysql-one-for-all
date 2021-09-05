CREATE VIEW estatisticas_musicais AS
SELECT COUNT(nome_musica) AS cancoes ,
COUNT(DISTINCT(artista_id)) AS artistas,
COUNT(DISTINCT(album_id)) AS albuns
FROM spotifyclone.musicas;
