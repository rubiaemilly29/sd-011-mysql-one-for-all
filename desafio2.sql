CREATE VIEW estatisticas_musicais AS
SELECT COUNT(M.cancoes_id) AS cancoes, 
COUNT(DISTINCT AR.id_artista) AS artistas, 
COUNT(DISTINCT A.album_id) AS albuns
FROM SpotifyClone.albuns A 
INNER JOIN SpotifyClone.musicas M ON A.album_id = M.album_id
INNER JOIN SpotifyClone.artistas AR ON AR.id_artista = A.id_artista;

