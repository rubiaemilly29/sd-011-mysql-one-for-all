CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT s.song_name AS `nome`,
(SELECT COUNT(*)
FROM SpotifyClone.users AS u
WHERE ph.user_id = u.user_id
AND u.user_subs IN (2, 3)) AS `reproducoes`
FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.songs AS s
ON ph.song_id = s.song_id
HAVING `reproducoes` > 0
ORDER BY `nome`;
