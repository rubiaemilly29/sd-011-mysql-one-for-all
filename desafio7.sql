CREATE VIEW perfil_artistas AS
SELECT P.performer_name AS 'artista',
A.album_title AS 'album',
(
SELECT COUNT(*)
FROM SpotifyClone.Followed_Performers F
WHERE F.performer_id = P.performer_id
) AS 'seguidores'
FROM SpotifyClone.Performers P
INNER JOIN SpotifyClone.Albuns A
ON P.performer_id = A.performer_id
ORDER BY seguidores DESC, artista, album;
