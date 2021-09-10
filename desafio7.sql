CREATE VIEW perfil_artistas AS
SELECT
A.artista,
B.album,
COUNT(S.artista_id) seguidores
FROM SpotifyClone.Artistas A
INNER JOIN SpotifyClone.Albuns B ON A.artista_id = B.artista_id
INNER JOIN SpotifyClone.Seguindo_artistas S ON B.artista_id = S.artista_id
GROUP BY B.album_id
ORDER BY `seguidores` DESC, A.artista, B.album;
