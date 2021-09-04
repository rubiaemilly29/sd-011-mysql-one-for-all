CREATE VIEW top_3_artistas AS
SELECT P.performer_name AS 'artista',
(
SELECT COUNT(*)
FROM SpotifyClone.Followed_Performers FP
WHERE P.performer_id = FP.performer_id
) 'seguidores'
FROM SpotifyClone.Performers P
ORDER BY seguidores DESC,
artista
LIMIT 3;
