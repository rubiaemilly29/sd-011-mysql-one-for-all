CREATE VIEW perfil_artistas AS
SELECT A.artista artista,
AL.album album, COUNT(S.seguindo_artistas) seguidores
FROM SpotifyClone.artistas A
INNER JOIN SpotifyClone.albuns AL
ON A.artista_id = AL.artista_id
INNER JOIN SpotifyClone.seguindo S
ON A.artista_id = S.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
