CREATE VIEW cancoes_premium AS
SELECT
s.song_name as 'nome',
COUNT(s.song_id) AS 'reproducoes'
FROM SpotifyClone.reproduction_history AS rh
INNER JOIN SpotifyClone.songs AS s
ON s.song_id = rh.song_id
WHERE rh.user_id IN (
SELECT usr.user_id
FROM users AS usr
WHERE usr.plan_id = 2 OR usr.plan_id = 3
)
group by s.song_id
order by s.song_name;
