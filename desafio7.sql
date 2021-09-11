CREATE VIEW perfil_artistas AS
SELECT AR.artista_nome AS artista,
AL.titulo AS album,
COUNT(S.id_assinante) AS seguidores
FROM SpotifyClone.artistas AR
INNER JOIN SpotifyClone.albuns AL ON AL.id_artista = AR.id_artista
INNER JOIN SpotifyClone.seguindo S ON S.id_artista = AL.id_artista
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
