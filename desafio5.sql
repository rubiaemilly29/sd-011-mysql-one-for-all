CREATE VIEW top_2_hits_do_momento AS
SELECT
s.name AS cancao,
(
SELECT
COUNT(*)
FROM
SpotifyClone.History AS h
WHERE
h.song_id = s.song_id
) AS reproducoes
FROM
SpotifyClone.Songs AS s
ORDER BY
2 DESC,
1 ASC
LIMIT 2;
