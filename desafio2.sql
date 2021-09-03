CREATE VIEW estatisticas_musicais AS
SELECT COUNT(M.musica_id) AS cancoes, COUNT(DISTINCT A.artista_id) AS artistas, COUNT(DISTINCT AL.album_id) AS albuns
FROM spotifyclone.musicas AS M
INNER JOIN spotifyclone.albuns AS Al
ON M.album_id = AL.album_id
INNER JOIN spotifyclone.artistas AS A
ON AL.artista_id = A.artista_id;

SELECT * FROM estatisticas_musicais;