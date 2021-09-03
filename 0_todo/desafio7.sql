CREATE VIEW perfil_artistas AS;
SELECT A.Artist artista,
AB.Album album, COUNT(AH.User_id)
FROM SpotifyClone.Artists A
INNER JOIN SpotifyClone.Albums_artists AA
ON A.Artist_id = AA.Artist_id
INNER JOIN SpotifyClone.Albums AB
ON AB.Album_id = AA.Album_id
INNER JOIN SpotifyClone.Artist_history AH
ON AH.Artist_id = A.Artist_id
GROUP BY artista;


SELECT A.Artist artista,
COUNT(AH.User_id)
FROM SpotifyClone.Artists A
INNER JOIN SpotifyClone.Artist_history AH
ON AH.Artist_id = A.Artist_id
GROUP BY artista;