CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT
a.name AS 'artista',
(
SELECT
COUNT(*)
FROM
SpotifyClone.Artists_Followers AS af
WHERE
af.artist_id = a.artist_id
) AS 'seguidores'
FROM
SpotifyClone.Artists AS a
ORDER BY
2 DESC,
1 ASC
LIMIT 3;
