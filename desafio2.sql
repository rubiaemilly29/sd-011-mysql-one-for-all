CREATE VIEW estatisticas_musicais AS
SELECT COUNT(t1.cancao) AS 'cancoes',
(SELECT COUNT(t2.artista)
FROM SpotifyClone.artistas AS t2) AS 'artistas',
(SELECT COUNT(t3.album)
FROM SpotifyClone.albuns AS t3) AS 'albuns'
FROM SpotifyClone.cancoes AS t1;
