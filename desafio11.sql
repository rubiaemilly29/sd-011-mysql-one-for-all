CREATE VIEW cancoes_premium AS
SELECT s.name AS 'nome',
(SELECT COUNT(hr.song_id)
FROM SpotifyClone.history_reproduction hr
WHERE s.song_id = hr.song_id) AS 'reproducoes'
FROM SpotifyClone.history_reproduction hr
INNER JOIN SpotifyClone.songs s
ON hr.song_id = s.song_id
INNER JOIN SpotifyClone.users u
ON hr.user_id = u.user_id
WHERE u.plan_id IN (2,3)
ORDER BY `nome`;
