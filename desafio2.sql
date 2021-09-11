USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(M.cancoes_id) AS cancoes, 
COUNT(DISTINCT AR.id_artista) AS artistas, 
COUNT(DISTINCT A.album_id) AS albuns
FROM albuns A 
INNER JOIN musicas M ON A.album_id = M.album_id
INNER JOIN artistas AR ON AR.id_artista = A.id_artista;
